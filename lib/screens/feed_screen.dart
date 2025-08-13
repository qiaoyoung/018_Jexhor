import 'package:flutter/material.dart';
import 'dart:convert';
import '../utils/constants.dart';
import 'pet_detail_screen.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  List<Map<String, dynamic>> pets = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPetData();
  }

  Future<void> _loadPetData() async {
    try {
      final String response = await DefaultAssetBundle.of(context)
          .loadString('assets/type/pet_information.json');
      final data = await json.decode(response);
      setState(() {
        pets = List<Map<String, dynamic>>.from(data['pets']);
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.primaryColor,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              onRefresh: _loadPetData,
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: pets.length,
                itemBuilder: (context, index) {
                  final pet = pets[index];
                  return _buildPetCard(pet, index);
                },
              ),
            ),
    );
  }

  Widget _buildPetCard(Map<String, dynamic> pet, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PetDetailScreen(pet: pet),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 16),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Pet Image
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  _getCorrectImagePath(pet['image']),
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: Icon(
                        pet['type'] == 'Cat' ? Icons.pets : Icons.pets,
                        size: 80,
                        color: Colors.grey[600],
                      ),
                    );
                  },
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Pet Name and Type
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          pet['name'] ?? 'Unknown Pet',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppConstants.textPrimary,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: pet['type'] == 'Cat' 
                              ? Colors.orange.withOpacity(0.2)
                              : Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          pet['type'] ?? 'Unknown',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: pet['type'] == 'Cat' ? Colors.orange[700] : Colors.blue[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Breed
                  if (pet['breed'] != null) ...[
                    Text(
                      pet['breed'],
                      style: TextStyle(
                        fontSize: 16,
                        color: AppConstants.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                  
                  // Coat Color
                  if (pet['coat_color'] != null) ...[
                    Row(
                      children: [
                        Icon(Icons.palette, size: 16, color: AppConstants.textLight),
                        const SizedBox(width: 4),
                        Text(
                          pet['coat_color'],
                          style: TextStyle(
                            fontSize: 14,
                            color: AppConstants.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                  ],
                  
                  // Brief Info
                  Row(
                    children: [
                      if (pet['physical_characteristics']?['size'] != null) ...[
                        _buildBriefInfo('Size', pet['physical_characteristics']['size']),
                        const SizedBox(width: 16),
                      ],
                      if (pet['physical_characteristics']?['weight_range'] != null) ...[
                        _buildBriefInfo('Weight', pet['physical_characteristics']['weight_range']),
                      ],
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Personality Preview
                  if (pet['personality_traits'] != null && pet['personality_traits'].isNotEmpty) ...[
                    Text(
                      'Personality: ${(pet['personality_traits'] as List<dynamic>).take(2).map((trait) => trait.toString()).join(', ')}',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppConstants.textSecondary,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                  
                  const SizedBox(height: 12),
                  
                  // Tap to view more
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 14,
                        color: AppConstants.primaryColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Tap to view details',
                        style: TextStyle(
                          fontSize: 12,
                          color: AppConstants.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBriefInfo(String label, String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$label: ',
          style: TextStyle(
            fontSize: 12,
            color: AppConstants.textLight,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 12,
            color: AppConstants.textSecondary,
          ),
        ),
      ],
    );
  }

  String _getCorrectImagePath(String? imagePath) {
    if (imagePath == null || imagePath.isEmpty) {
      return 'assets/type/pet_1.jpg'; // 使用第一个宠物图片作为默认
    }
    if (imagePath.endsWith('.png')) {
      return imagePath.replaceAll('.png', '.jpg');
    }
    return imagePath;
  }
} 