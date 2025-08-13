import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import '../utils/constants.dart';
import 'about_us_screen.dart';
import 'terms_of_service_screen.dart';
import 'privacy_policy_screen.dart';
import 'my_collection_screen.dart';

class ProfileScreenNew extends StatefulWidget {
  const ProfileScreenNew({super.key});

  @override
  State<ProfileScreenNew> createState() => _ProfileScreenNewState();
}

class _ProfileScreenNewState extends State<ProfileScreenNew> {
  String userName = 'Pet Lover';
  String userAvatar = 'assets/images/default_avatar.jpg';
  String userAvatarRef = 'assets/images/default_avatar.jpg';
  bool isEditing = false;
  final TextEditingController _nameController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
    _nameController.text = userName;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _loadUserProfile() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/user_profile.json');
      if (await file.exists()) {
        final String contents = await file.readAsString();
        final Map<String, dynamic> profile = json.decode(contents);
        final String storedRef = profile['userAvatar'] ?? 'assets/images/default_avatar.jpg';
        String resolvedAvatar = storedRef;
        if (storedRef.startsWith('local:')) {
          final String fileName = storedRef.substring(6);
          resolvedAvatar = '${directory.path}/$fileName';
        }
        setState(() {
          userName = profile['userName'] ?? 'Pet Lover';
          userAvatarRef = storedRef;
          userAvatar = resolvedAvatar;
          _nameController.text = userName;
        });
      }
    } catch (e) {
      // Handle error silently
    }
  }

  Future<void> _saveUserProfile() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/user_profile.json');
      final profile = {
        'userName': userName,
        'userAvatar': userAvatarRef,
      };
      await file.writeAsString(json.encode(profile));
    } catch (e) {
      // Handle error silently
    }
  }

  void _toggleEdit() {
    setState(() {
      isEditing = !isEditing;
      if (!isEditing) {
        userName = _nameController.text.trim();
        if (userName.isEmpty) {
          userName = 'Pet Lover';
          _nameController.text = userName;
        }
        _saveUserProfile();
      }
    });
  }

  void _changeAvatar() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose from Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImage(ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.face),
                title: const Text('Choose Preset Avatar'),
                onTap: () {
                  Navigator.pop(context);
                  _selectAvatar();
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        maxWidth: 400,
        maxHeight: 400,
        imageQuality: 80,
      );
      
      if (image != null) {
        final directory = await getApplicationDocumentsDirectory();
        final fileName = 'user_avatar_${DateTime.now().millisecondsSinceEpoch}.jpg';
        final savedImage = await File(image.path).copy('${directory.path}/$fileName');
        
        setState(() {
          userAvatar = savedImage.path;
          userAvatarRef = 'local:$fileName';
        });
        _saveUserProfile();
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to pick image. Please try again.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  void _selectAvatar() {
    final mockAvatars = [
      'assets/images/default_avatar.jpg',
      'assets/post/1/user.jpg',
      'assets/post/2/user.jpg',
      'assets/post/3/user.jpg',
      'assets/post/4/user.jpg',
    ];
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Avatar'),
          content: SizedBox(
            width: double.maxFinite,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: mockAvatars.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      userAvatar = mockAvatars[index];
                      userAvatarRef = mockAvatars[index];
                    });
                    _saveUserProfile();
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: userAvatar == mockAvatars[index] 
                            ? AppConstants.primaryColor 
                            : Colors.grey[300]!,
                        width: userAvatar == mockAvatars[index] ? 2 : 1,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        mockAvatars[index],
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: const Icon(Icons.person, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Background Image with Blur
          Container(
            width: double.infinity,
            height: 300,
            child: Stack(
              children: [
                // Background Image
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.asset(
                    'assets/images/jexhor_me_bg.jpg',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: const Icon(
                          Icons.image,
                          size: 80,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
                // Blur Overlay
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
                
                // Gradient overlay to improve text readability
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.35),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // User Profile Info
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      // Avatar
                      GestureDetector(
                        onTap: isEditing ? _changeAvatar : null,
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: userAvatar.startsWith('assets/')
                                  ? AssetImage(userAvatar)
                                  : FileImage(File(userAvatar)) as ImageProvider,
                              onBackgroundImageError: (exception, stackTrace) {
                                // Handle error
                              },
                            ),
                            if (isEditing)
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: AppConstants.primaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(width: 16),
                      
                      // User Name
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (isEditing) ...[
                              TextField(
                                controller: _nameController,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter your name',
                                  hintStyle: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ] else ...[
                              Text(
                                userName,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                            const SizedBox(height: 4),
                            Text(
                              'Pet Enthusiast',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      // Edit Button
                      IconButton(
                        onPressed: _toggleEdit,
                        icon: Icon(
                          isEditing ? Icons.check : Icons.edit,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Content Area
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: AppConstants.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        ),
                      ],
                      border: Border.all(color: Colors.grey[200]!, width: 1),
                    ),
                    child: Column(
                      children: [
                        _buildSettingTile(
                          icon: Icons.collections_bookmark_outlined,
                          iconBgColor: Colors.purple.withOpacity(0.12),
                          iconColor: Colors.purple,
                          title: 'My Collection',
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const MyCollectionScreen(),
                              ),
                            );
                          },
                        ),
                        Divider(height: 1, color: Colors.grey[200]),
                        _buildSettingTile(
                          icon: Icons.info_outline,
                          iconBgColor: AppConstants.primaryColor.withOpacity(0.15),
                          iconColor: AppConstants.primaryColor,
                          title: 'About Us',
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const AboutUsScreen(),
                              ),
                            );
                          },
                        ),
                        Divider(height: 1, color: Colors.grey[200]),
                        _buildSettingTile(
                          icon: Icons.privacy_tip_outlined,
                          iconBgColor: Colors.blue.withOpacity(0.12),
                          iconColor: Colors.blue,
                          title: 'Privacy Policy',
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const PrivacyPolicyScreen(),
                              ),
                            );
                          },
                        ),
                        Divider(height: 1, color: Colors.grey[200]),
                        _buildSettingTile(
                          icon: Icons.description_outlined,
                          iconBgColor: Colors.orange.withOpacity(0.12),
                          iconColor: Colors.orange,
                          title: 'Terms of Service',
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const TermsOfServiceScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 

Widget _buildSettingTile({
  required IconData icon,
  required Color iconBgColor,
  required Color iconColor,
  required String title,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: iconColor, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppConstants.textPrimary,
              ),
            ),
          ),
          const Icon(Icons.chevron_right, color: AppConstants.textLight),
        ],
      ),
    ),
  );
} 