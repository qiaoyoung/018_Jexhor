import 'package:flutter/material.dart';
import '../models/post.dart';
import '../models/user.dart';
import '../models/pet.dart';
import '../services/mock_data_service.dart';
import '../widgets/post_card.dart';
import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Post> _posts = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPosts();
  }

  void _loadPosts() {
    setState(() {
      _isLoading = true;
    });

    // 模拟网络延迟
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _posts = MockDataService.getLatestPosts();
        _isLoading = false;
      });
    });
  }

  void _onLikePost(String postId) {
    setState(() {
      final postIndex = _posts.indexWhere((post) => post.id == postId);
      if (postIndex != -1) {
        final post = _posts[postIndex];
        _posts[postIndex] = post.copyWith(
          isLiked: !post.isLiked,
          likeCount: post.isLiked ? post.likeCount - 1 : post.likeCount + 1,
        );
      }
    });
  }

  void _onCommentPost(String postId) {
    // TODO: 实现评论功能
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Comment feature coming soon...')),
    );
  }

  void _onSharePost(String postId) {
    // TODO: 实现分享功能
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Share feature coming soon...')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: 实现搜索功能
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search feature coming soon...')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: 实现通知功能
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications feature coming soon...')),
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
          : RefreshIndicator(
              onRefresh: () async {
                _loadPosts();
              },
              child: _posts.isEmpty
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
                            'No posts yet',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppConstants.textSecondary,
                            ),
                          ),
                          SizedBox(height: AppConstants.paddingSmall),
                          Text(
                            'Start sharing your pet\'s daily life!',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppConstants.textLight,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(top: AppConstants.paddingSmall),
                      itemCount: _posts.length,
                      itemBuilder: (context, index) {
                        final post = _posts[index];
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
                            // TODO: 跳转到帖子详情页
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Post detail page coming soon...')),
                            );
                          },
                          onLike: () => _onLikePost(post.id),
                          onComment: () => _onCommentPost(post.id),
                          onShare: () => _onSharePost(post.id),
                        );
                      },
                    ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: 跳转到发布页面
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Create post feature coming soon...')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 