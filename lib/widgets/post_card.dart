import 'package:flutter/material.dart';
import '../models/post.dart';
import '../models/user.dart';
import '../models/pet.dart';
import '../utils/constants.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final User user;
  final Pet? pet;
  final VoidCallback? onTap;
  final VoidCallback? onLike;
  final VoidCallback? onComment;
  final VoidCallback? onShare;

  const PostCard({
    super.key,
    required this.post,
    required this.user,
    this.pet,
    this.onTap,
    this.onLike,
    this.onComment,
    this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
        vertical: AppConstants.paddingSmall,
      ),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 用户信息头部
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppConstants.primaryColor.withOpacity(0.1),
                    backgroundImage: user.avatarUrl != null
                        ? NetworkImage(user.avatarUrl!)
                        : null,
                    child: user.avatarUrl == null
                        ? Icon(
                            Icons.person,
                            color: AppConstants.primaryColor,
                            size: 20,
                          )
                        : null,
                  ),
                  const SizedBox(width: AppConstants.paddingSmall),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              user.displayName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppConstants.textPrimary,
                              ),
                            ),
                            if (user.isVerified) ...[
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
                          _formatTime(post.createdAt),
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppConstants.textLight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_horiz),
                    onPressed: () {},
                    color: AppConstants.textLight,
                  ),
                ],
              ),
              // 宠物标签
              if (pet != null) ...[
                const SizedBox(height: AppConstants.paddingSmall),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppConstants.paddingSmall,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppConstants.primaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.pets,
                        size: 14,
                        color: AppConstants.primaryColor,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        pet!.name,
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppConstants.primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              // 帖子内容
              if (post.content.isNotEmpty) ...[
                const SizedBox(height: AppConstants.paddingSmall),
                Text(
                  post.content,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppConstants.textPrimary,
                    height: 1.4,
                  ),
                ),
              ],
              // 图片
              if (post.imageUrls.isNotEmpty) ...[
                const SizedBox(height: AppConstants.paddingSmall),
                _buildImageGrid(post.imageUrls),
              ],
              // 标签
              if (post.tags.isNotEmpty) ...[
                const SizedBox(height: AppConstants.paddingSmall),
                Wrap(
                  spacing: 4,
                  children: post.tags.map((tag) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: AppConstants.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                      ),
                      child: Text(
                        '#$tag',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppConstants.primaryColor,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
              // 互动按钮
              const SizedBox(height: AppConstants.paddingMedium),
              Row(
                children: [
                  _buildActionButton(
                    icon: post.isLiked ? Icons.favorite : Icons.favorite_border,
                    label: '${post.likeCount}',
                    onTap: onLike,
                    isActive: post.isLiked,
                  ),
                  const SizedBox(width: AppConstants.paddingLarge),
                  _buildActionButton(
                    icon: Icons.chat_bubble_outline,
                    label: '${post.commentCount}',
                    onTap: onComment,
                  ),
                  const SizedBox(width: AppConstants.paddingLarge),
                  _buildActionButton(
                    icon: Icons.share_outlined,
                    label: '${post.shareCount}',
                    onTap: onShare,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageGrid(List<String> imageUrls) {
    if (imageUrls.length == 1) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            imageUrls.first,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: AppConstants.backgroundColor,
                child: Icon(
                  Icons.image_not_supported,
                  color: AppConstants.textLight,
                ),
              );
            },
          ),
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: imageUrls.length == 2 ? 2 : 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
      ),
      itemCount: imageUrls.length > 9 ? 9 : imageUrls.length,
      itemBuilder: (context, index) {
        if (index == 8 && imageUrls.length > 9) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
                ),
                child: Center(
                  child: Text(
                    '+${imageUrls.length - 9}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          );
        }
        return ClipRRect(
          borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
          child: Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: AppConstants.backgroundColor,
                child: Icon(
                  Icons.image_not_supported,
                  color: AppConstants.textLight,
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
    bool isActive = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppConstants.radiusSmall),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingSmall,
          vertical: 4,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isActive ? AppConstants.primaryColor : AppConstants.textLight,
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: isActive ? AppConstants.primaryColor : AppConstants.textLight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);

    if (difference.inDays > 0) {
      return '${difference.inDays}天前';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}小时前';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}分钟前';
    } else {
      return '刚刚';
    }
  }
} 