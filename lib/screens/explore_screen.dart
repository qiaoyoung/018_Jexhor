import 'package:flutter/material.dart';
import '../models/post.dart';
import '../models/pet.dart';
import '../services/mock_data_service.dart';
import '../widgets/post_card.dart';
import '../widgets/pet_card.dart';
import '../utils/constants.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Post> _hotPosts = [];
  List<Pet> _recommendedPets = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _loadData() {
    setState(() {
      _isLoading = true;
    });

    // 模拟网络延迟
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _hotPosts = MockDataService.getHotPosts();
        _recommendedPets = MockDataService.getAllPets();
        _isLoading = false;
      });
    });
  }

  void _onLikePost(String postId) {
    setState(() {
      final postIndex = _hotPosts.indexWhere((post) => post.id == postId);
      if (postIndex != -1) {
        final post = _hotPosts[postIndex];
        _hotPosts[postIndex] = post.copyWith(
          isLiked: !post.isLiked,
          likeCount: post.isLiked ? post.likeCount - 1 : post.likeCount + 1,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Trending'),
            Tab(text: 'Pets'),
          ],
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
        ),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppConstants.primaryColor,
              ),
            )
          : TabBarView(
              controller: _tabController,
              children: [
                _buildHotPostsTab(),
                _buildPetsTab(),
              ],
            ),
    );
  }

  Widget _buildHotPostsTab() {
    return RefreshIndicator(
      onRefresh: () async {
        _loadData();
      },
      child: _hotPosts.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.trending_up,
                    size: 80,
                    color: AppConstants.textLight,
                  ),
                  SizedBox(height: AppConstants.paddingMedium),
                  Text(
                    'No trending content',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppConstants.textSecondary,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.only(top: AppConstants.paddingSmall),
              itemCount: _hotPosts.length,
              itemBuilder: (context, index) {
                final post = _hotPosts[index];
                final user = MockDataService.getUserById(post.userId);
                final pet = post.petId != null
                    ? MockDataService.getPetById(post.petId!)
                    : null;

                if (user == null) {
                  return const SizedBox.shrink();
                }

                return PostCard(
                  post: post,
                  user: user,
                  pet: pet,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Post detail page coming soon...')),
                    );
                  },
                  onLike: () => _onLikePost(post.id),
                  onComment: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Comment feature coming soon...')),
                    );
                  },
                  onShare: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Share feature coming soon...')),
                    );
                  },
                );
              },
            ),
    );
  }

  Widget _buildPetsTab() {
    return RefreshIndicator(
      onRefresh: () async {
        _loadData();
      },
      child: _recommendedPets.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.pets,
                    size: 80,
                    color: AppConstants.textLight,
                  ),
                  SizedBox(height: AppConstants.paddingMedium),
                  Text(
                    'No pet recommendations',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppConstants.textSecondary,
                    ),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(AppConstants.paddingMedium),
              itemCount: _recommendedPets.length,
              itemBuilder: (context, index) {
                final pet = _recommendedPets[index];
                final owner = MockDataService.getUserById(pet.ownerId);

                return PetCard(
                  pet: pet,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${pet.name}\'s detail page coming soon...'),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
} 