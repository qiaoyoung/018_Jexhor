import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../utils/constants.dart';
import 'pet_detail_screen.dart';

class MyCollectionScreen extends StatefulWidget {
  const MyCollectionScreen({super.key});

  @override
  State<MyCollectionScreen> createState() => _MyCollectionScreenState();
}

class _MyCollectionScreenState extends State<MyCollectionScreen> {
  List<Map<String, dynamic>> favorites = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<File> _favoritesFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/favorite_pets.json');
  }

  Future<void> _loadFavorites() async {
    try {
      final file = await _favoritesFile();
      if (await file.exists()) {
        final String contents = await file.readAsString();
        final List<dynamic> list = json.decode(contents);
        favorites = List<Map<String, dynamic>>.from(list);
      } else {
        favorites = [];
      }
    } catch (e) {
      favorites = [];
    }
    setState(() {
      isLoading = false;
    });
  }

  Future<void> _saveFavorites() async {
    try {
      final file = await _favoritesFile();
      await file.writeAsString(json.encode(favorites));
    } catch (e) {
      // silent
    }
  }

  String _petId(Map<String, dynamic> pet) {
    final String name = (pet['name'] ?? '').toString();
    final String type = (pet['type'] ?? '').toString();
    final String breed = (pet['breed'] ?? '').toString();
    return '${name.trim()}|${type.trim()}|${breed.trim()}';
  }

  void _removeAt(int index) async {
    final removed = favorites.removeAt(index);
    await _saveFavorites();
    setState(() {});
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Removed ${removed['name']} from Collection')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Collection'),
        backgroundColor: AppConstants.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : favorites.isEmpty
              ? _buildEmpty()
              : RefreshIndicator(
                  onRefresh: _loadFavorites,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: favorites.length,
                    itemBuilder: (context, index) {
                      final pet = favorites[index];
                      return Dismissible(
                        key: Key(_petId(pet)),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          color: Colors.red,
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        onDismissed: (_) => _removeAt(index),
                        child: _buildPetTile(pet),
                      );
                    },
                  ),
                ),
    );
  }

  Widget _buildEmpty() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.bookmark_border, size: 80, color: Colors.grey[400]),
          const SizedBox(height: 12),
          Text(
            'No collections yet',
            style: TextStyle(fontSize: 18, color: Colors.grey[600], fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Text(
            'Tap the bookmark icon on a pet to add it here.',
            style: TextStyle(fontSize: 14, color: Colors.grey[500]),
          ),
        ],
      ),
    );
  }

  Widget _buildPetTile(Map<String, dynamic> pet) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            _getCorrectImagePath(pet['image']),
            width: 56,
            height: 56,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                width: 56,
                height: 56,
                color: Colors.grey[300],
                child: const Icon(Icons.pets, color: Colors.grey),
              );
            },
          ),
        ),
        title: Text(
          pet['name'] ?? 'Unknown Pet',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppConstants.textPrimary),
        ),
        subtitle: Text(
          [pet['type'], pet['breed']].where((e) => e != null && e.toString().isNotEmpty).join(' · '),
          style: TextStyle(fontSize: 13, color: AppConstants.textSecondary),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PetDetailScreen(pet: pet),
            ),
          );
        },
      ),
    );
  }

  String _getCorrectImagePath(String? imagePath) {
    if (imagePath == null || imagePath.isEmpty) {
      return 'assets/type/pet_1.jpg';
    }
    if (imagePath.endsWith('.png')) {
      return imagePath.replaceAll('.png', '.jpg');
    }
    return imagePath;
  }
} 