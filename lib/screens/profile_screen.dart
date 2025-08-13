import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/pet.dart';
import '../services/mock_data_service.dart';
import '../widgets/pet_card.dart';
import '../utils/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  User? _currentUser;
  List<Pet> _userPets = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() {
    setState(() {
      _isLoading = true;
    });

    // 模拟网络延迟
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _currentUser = MockDataService.getUserById('1'); // 模拟当前用户
        if (_currentUser != null) {
          _userPets = MockDataService.getPetsByUserId(_currentUser!.id);
        }
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings feature coming soon...')),
              );
            },
          ),
        ],
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppConstants.primaryColor,
              ),
            )
          : _currentUser == null
              ? const Center(
                  child: Text('Failed to load user information'),
                )
              : RefreshIndicator(
                  onRefresh: () async {
                    _loadUserData();
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildUserHeader(),
                        _buildUserStats(),
                        _buildUserPets(),
                        _buildMenuItems(),
                      ],
                    ),
                  ),
                ),
    );
  }

  Widget _buildUserHeader() {
    return Container(
      padding: const EdgeInsets.all(AppConstants.paddingLarge),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: AppConstants.primaryColor.withOpacity(0.1),
            backgroundImage: _currentUser!.avatarUrl != null
                ? NetworkImage(_currentUser!.avatarUrl!)
                : null,
            child: _currentUser!.avatarUrl == null
                ? Icon(
                    Icons.person,
                    color: AppConstants.primaryColor,
                    size: 40,
                  )
                : null,
          ),
          const SizedBox(width: AppConstants.paddingMedium),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      _currentUser!.displayName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppConstants.textPrimary,
                      ),
                    ),
                    if (_currentUser!.isVerified) ...[
                      const SizedBox(width: 8),
                      Icon(
                        Icons.verified,
                        size: 20,
                        color: AppConstants.primaryColor,
                      ),
                    ],
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '@${_currentUser!.username}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppConstants.textSecondary,
                  ),
                ),
                if (_currentUser!.bio != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    _currentUser!.bio!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppConstants.textPrimary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Edit profile feature coming soon...')),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildUserStats() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.paddingLarge),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStatItem('Posts', _currentUser!.postCount.toString()),
          _buildStatItem('Following', _currentUser!.followingCount.toString()),
          _buildStatItem('Followers', _currentUser!.followerCount.toString()),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppConstants.textPrimary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AppConstants.textSecondary,
          ),
        ),
      ],
    );
  }

  Widget _buildUserPets() {
    if (_userPets.isEmpty) {
      return Container(
        padding: const EdgeInsets.all(AppConstants.paddingLarge),
        child: Column(
          children: [
            const Icon(
              Icons.pets,
              size: 60,
              color: AppConstants.textLight,
            ),
            const SizedBox(height: AppConstants.paddingMedium),
            const Text(
              'No pets added yet',
              style: TextStyle(
                fontSize: 16,
                color: AppConstants.textSecondary,
              ),
            ),
            const SizedBox(height: AppConstants.paddingSmall),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Add pet feature coming soon...')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppConstants.primaryColor,
                foregroundColor: Colors.white,
              ),
              child: const Text('Add Pet'),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppConstants.paddingLarge),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'My Pets',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.textPrimary,
                ),
              ),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Manage pets feature coming soon...')),
                  );
                },
                child: const Text('Manage'),
              ),
            ],
          ),
        ),
        ..._userPets.map((pet) => PetCard(
              pet: pet,
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${pet.name}\'s detail page coming soon...'),
                  ),
                );
              },
            )),
      ],
    );
  }

  Widget _buildMenuItems() {
    final menuItems = [
      {'icon': Icons.favorite, 'title': 'My Favorites', 'subtitle': 'Saved posts and pets'},
      {'icon': Icons.history, 'title': 'Browse History', 'subtitle': 'Recently viewed content'},
      {'icon': Icons.photo_library, 'title': 'My Album', 'subtitle': 'Uploaded photos and videos'},
      {'icon': Icons.notifications, 'title': 'Notifications', 'subtitle': 'Comments, likes and more'},
      {'icon': Icons.help_outline, 'title': 'Help Center', 'subtitle': 'FAQ and customer service'},
      {'icon': Icons.info_outline, 'title': 'About Us', 'subtitle': 'App info and version'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(AppConstants.paddingLarge),
          child: Text(
            'Features',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppConstants.textPrimary,
            ),
          ),
        ),
        ...menuItems.map((item) => ListTile(
              leading: Icon(
                item['icon'] as IconData,
                color: AppConstants.primaryColor,
              ),
              title: Text(
                item['title'] as String,
                style: const TextStyle(
                  color: AppConstants.textPrimary,
                ),
              ),
              subtitle: Text(
                item['subtitle'] as String,
                style: const TextStyle(
                  color: AppConstants.textSecondary,
                ),
              ),
              trailing: const Icon(
                Icons.chevron_right,
                color: AppConstants.textLight,
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${item['title']}功能开发中...'),
                  ),
                );
              },
            )),
        const SizedBox(height: AppConstants.paddingLarge),
      ],
    );
  }
} 