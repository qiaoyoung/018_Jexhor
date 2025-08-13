import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../utils/constants.dart';
import 'post_detail_screen.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  List<Map<String, dynamic>> posts = [];
  bool isLoading = true;
  Set<String> likedPosts = {};
  Set<String> savedPosts = {};

  @override
  void initState() {
    super.initState();
    _loadPostData();
    _loadLikedPosts();
    _loadSavedPosts();
  }

  Future<void> _loadPostData() async {
    try {
      final String response = await DefaultAssetBundle.of(context)
          .loadString('assets/post/pet_posts_clean.json');
      final data = await json.decode(response);
      setState(() {
        posts = List<Map<String, dynamic>>.from(data['users']);
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _loadLikedPosts() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/liked_posts.json');
      if (await file.exists()) {
        final String contents = await file.readAsString();
        final List<dynamic> likedList = json.decode(contents);
        setState(() {
          likedPosts = Set<String>.from(likedList);
        });
      }
    } catch (e) {
      // Handle error silently
    }
  }

  Future<void> _saveLikedPosts() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/liked_posts.json');
      await file.writeAsString(json.encode(likedPosts.toList()));
    } catch (e) {
      // Handle error silently
    }
  }

  Future<void> _loadSavedPosts() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/saved_posts.json');
      if (await file.exists()) {
        final String contents = await file.readAsString();
        final List<dynamic> savedList = json.decode(contents);
        setState(() {
          savedPosts = Set<String>.from(savedList);
        });
      }
    } catch (e) {
      // Handle error silently
    }
  }

  Future<void> _saveSavedPosts() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/saved_posts.json');
      await file.writeAsString(json.encode(savedPosts.toList()));
    } catch (e) {
      // Handle error silently
    }
  }

  void _toggleLike(String postId) {
    setState(() {
      if (likedPosts.contains(postId)) {
        likedPosts.remove(postId);
      } else {
        likedPosts.add(postId);
      }
    });
    _saveLikedPosts();
  }

  void _toggleSave(String postId) {
    setState(() {
      if (savedPosts.contains(postId)) {
        savedPosts.remove(postId);
      } else {
        savedPosts.add(postId);
      }
    });
    _saveSavedPosts();
  }

  bool _isLiked(String postId) {
    return likedPosts.contains(postId);
  }

  bool _isSaved(String postId) {
    return savedPosts.contains(postId);
  }

  void _showMoreOptions(BuildContext context, Map<String, dynamic> post, int index) {
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
                leading: const Icon(Icons.block, color: Colors.red),
                title: const Text('Block User'),
                subtitle: Text('Block ${post['displayName']}'),
                onTap: () {
                  Navigator.pop(context);
                  _blockUser(index);
                },
              ),
              ListTile(
                leading: const Icon(Icons.report, color: Colors.orange),
                title: const Text('Report Post'),
                subtitle: const Text('Report inappropriate content'),
                onTap: () {
                  Navigator.pop(context);
                  _reportPost(index);
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  void _blockUser(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Block User'),
          content: Text('Are you sure you want to block ${posts[index]['displayName']}? You won\'t see their posts anymore.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  posts.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${posts[index]['displayName']} has been blocked'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              child: const Text('Block', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  void _reportPost(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Report Post'),
          content: const Text('Are you sure you want to report this post? It will be reviewed by our team.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  posts.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Post has been reported and hidden'),
                    backgroundColor: Colors.orange,
                  ),
                );
              },
              child: const Text('Report', style: TextStyle(color: Colors.orange)),
            ),
          ],
        );
      },
    );
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
              onRefresh: _loadPostData,
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return _buildPostCard(post, index);
                },
              ),
            ),
    );
  }

  Widget _buildPostCard(Map<String, dynamic> post, int index) {
    final postData = post['post'];
    final images = postData['images'] as List<dynamic>;
    
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostDetailScreen(post: post),
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
            // User Header
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  // User Avatar
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      post['userAvatar'] ?? 'assets/images/default_avatar.jpg',
                    ),
                    onBackgroundImageError: (exception, stackTrace) {
                      // Handle error
                    },
                  ),
                  const SizedBox(width: 12),
                  
                  // User Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              post['displayName'] ?? 'Unknown User',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppConstants.textPrimary,
                              ),
                            ),
                            if (post['verified'] == true) ...[
                              const SizedBox(width: 4),
                              Icon(
                                Icons.verified,
                                size: 16,
                                color: AppConstants.primaryColor,
                              ),
                            ],
                          ],
                        ),
                        Text(
                          post['location'] ?? 'Unknown Location',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppConstants.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // More Options
                  IconButton(
                    icon: const Icon(Icons.more_horiz),
                    onPressed: () {
                      _showMoreOptions(context, post, index);
                    },
                  ),
                ],
              ),
            ),
            
            // Post Images
            if (images.isNotEmpty) ...[
              Container(
                height: 300,
                width: double.infinity,
                child: images.length == 1
                    ? _buildSingleImage(images[0])
                    : _buildImageGrid(images),
              ),
            ],
            
            // Action Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      _isLiked(postData['postId']) ? Icons.favorite : Icons.favorite_border,
                      color: _isLiked(postData['postId']) ? Colors.red : null,
                    ),
                    onPressed: () {
                      _toggleLike(postData['postId']);
                    },
                  ),
               
                ],
              ),
            ),
            
            // Likes Count
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                '${postData['likes'] + (_isLiked(postData['postId']) ? 1 : 0)} likes',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.textPrimary,
                ),
              ),
            ),
            
            // Post Description
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: '${post['displayName']} ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppConstants.textPrimary,
                          ),
                        ),
                        TextSpan(
                          text: postData['description'] ?? '',
                          style: const TextStyle(
                            color: AppConstants.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  // Tags
                  if (postData['tags'] != null && postData['tags'].isNotEmpty) ...[
                    Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      children: (postData['tags'] as List<dynamic>).map((tag) => 
                        Text(
                          tag,
                          style: TextStyle(
                            fontSize: 12,
                            color: AppConstants.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ).toList(),
                    ),
                    const SizedBox(height: 8),
                  ],
                  
                  // Location
                  if (postData['location'] != null) ...[
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 14,
                          color: AppConstants.textLight,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          postData['location'],
                          style: TextStyle(
                            fontSize: 12,
                            color: AppConstants.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                  
                  const SizedBox(height: 8),
                  
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

  Widget _buildSingleImage(String imagePath) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      child: Image.asset(
        imagePath,
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
    );
  }

  Widget _buildImageGrid(List<dynamic> images) {
    if (images.length == 2) {
      return Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                images[0],
                height: 300,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.image, size: 40, color: Colors.grey),
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 2),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              child: Image.asset(
                images[1],
                height: 300,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Icon(Icons.image, size: 40, color: Colors.grey),
                  );
                },
              ),
            ),
          ),
        ],
      );
    } else {
      // For 3+ images, show first image with overlay
      return Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              images[0],
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Icon(Icons.image, size: 80, color: Colors.grey),
                );
              },
            ),
          ),
          if (images.length > 3)
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '+${images.length - 3}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      );
    }
  }
} 