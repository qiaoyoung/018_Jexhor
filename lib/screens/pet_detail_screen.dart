import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../utils/constants.dart';

class PetDetailScreen extends StatefulWidget {
  final Map<String, dynamic> pet;

  const PetDetailScreen({super.key, required this.pet});

  @override
  State<PetDetailScreen> createState() => _PetDetailScreenState();
}

class _PetDetailScreenState extends State<PetDetailScreen> {
  List<Map<String, dynamic>> favoritePets = [];
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<File> _favoritesFile() async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/favorite_pets.json');
  }

  String _petId(Map<String, dynamic> pet) {
    final String name = (pet['name'] ?? '').toString();
    final String type = (pet['type'] ?? '').toString();
    final String breed = (pet['breed'] ?? '').toString();
    return '${name.trim()}|${type.trim()}|${breed.trim()}';
  }

  Future<void> _loadFavorites() async {
    try {
      final file = await _favoritesFile();
      if (await file.exists()) {
        final String contents = await file.readAsString();
        final List<dynamic> list = json.decode(contents);
        favoritePets = List<Map<String, dynamic>>.from(list);
      } else {
        favoritePets = [];
      }
    } catch (e) {
      favoritePets = [];
    }
    setState(() {
      isFavorite = favoritePets.any((p) => _petId(p) == _petId(widget.pet));
    });
  }

  Future<void> _saveFavorites() async {
    try {
      final file = await _favoritesFile();
      await file.writeAsString(json.encode(favoritePets));
    } catch (e) {
      // silent
    }
  }

  Future<void> _toggleFavorite() async {
    final String id = _petId(widget.pet);
    final int existingIndex = favoritePets.indexWhere((p) => _petId(p) == id);
    if (existingIndex >= 0) {
      favoritePets.removeAt(existingIndex);
      await _saveFavorites();
      setState(() {
        isFavorite = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Removed from Collection')),
        );
      }
    } else {
      favoritePets.add(widget.pet);
      await _saveFavorites();
      setState(() {
        isFavorite = true;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Added to Collection')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final pet = widget.pet;
    return Scaffold(
      appBar: AppBar(
        title: Text(pet['name'] ?? 'Pet Details'),
        backgroundColor: AppConstants.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.bookmark : Icons.bookmark_border,
              color: Colors.white,
            ),
            onPressed: _toggleFavorite,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                _getCorrectImagePath(pet['image']),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: Icon(
                      pet['type'] == 'Cat' ? Icons.pets : Icons.pets,
                      size: 100,
                      color: Colors.grey[600],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeaderSection(),
                  const SizedBox(height: 24),
                  if (pet['physical_characteristics'] != null) ...[
                    _buildDetailSection('Physical Characteristics', pet['physical_characteristics']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['care_requirements'] != null) ...[
                    _buildDetailSection('Care Requirements', pet['care_requirements']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['nutrition_requirements'] != null) ...[
                    _buildDetailSection('Nutrition Requirements', pet['nutrition_requirements']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['exercise_needs'] != null) ...[
                    _buildDetailSection('Exercise Needs', pet['exercise_needs']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['training_requirements'] != null) ...[
                    _buildDetailSection('Training Requirements', pet['training_requirements']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['health_considerations'] != null) ...[
                    _buildListSection('Health Considerations', pet['health_considerations']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['personality_traits'] != null) ...[
                    _buildListSection('Personality Traits', pet['personality_traits']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['living_environment'] != null) ...[
                    _buildDetailSection('Living Environment', pet['living_environment']),
                    const SizedBox(height: 24),
                  ],
                  if (pet['special_notes'] != null) ...[
                    _buildSpecialNotes(),
                    const SizedBox(height: 24),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    final pet = widget.pet;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                pet['name'] ?? 'Unknown Pet',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.textPrimary,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: pet['type'] == 'Cat' 
                    ? Colors.orange.withOpacity(0.2)
                    : Colors.blue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                pet['type'] ?? 'Unknown',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: pet['type'] == 'Cat' ? Colors.orange[700] : Colors.blue[700],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (pet['breed'] != null) ...[
          Text(
            pet['breed'],
            style: TextStyle(
              fontSize: 18,
              color: AppConstants.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
        ],
        if (pet['coat_color'] != null) ...[
          Row(
            children: [
              Icon(Icons.palette, size: 18, color: AppConstants.textLight),
              const SizedBox(width: 6),
              Text(
                pet['coat_color'],
                style: TextStyle(
                  fontSize: 16,
                  color: AppConstants.textSecondary,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  Widget _buildDetailSection(String title, Map<String, dynamic> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppConstants.textPrimary,
          ),
        ),
        const SizedBox(height: 12),
        ...data.entries.map((entry) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: AppConstants.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatKey(entry.key),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppConstants.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      entry.value.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        color: AppConstants.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _buildListSection(String title, List<dynamic> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppConstants.textPrimary,
          ),
        ),
        const SizedBox(height: 12),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: AppConstants.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  item.toString(),
                  style: TextStyle(
                    fontSize: 14,
                    color: AppConstants.textSecondary,
                  ),
                ),
              ),
            ],
          ),
        )),
      ],
    );
  }

  Widget _buildSpecialNotes() {
    final pet = widget.pet;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppConstants.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppConstants.primaryColor.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(
                Icons.lightbulb_outline,
                size: 24,
                color: AppConstants.primaryColor,
              ),
              SizedBox(width: 8),
              Text(
                'Special Notes',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            pet['special_notes'],
            style: const TextStyle(
              fontSize: 16,
              color: AppConstants.primaryColor,
              fontStyle: FontStyle.italic,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  String _formatKey(String key) {
    return key
        .split('_')
        .map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1))
        .join(' ');
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