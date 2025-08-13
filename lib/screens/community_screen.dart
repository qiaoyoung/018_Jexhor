import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../utils/constants.dart';
import 'chat_detail_screen.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  List<ChatListItem> chatList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadChatList();
  }

  Future<void> _loadChatList() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final files = directory.listSync();
      final chatFiles = files.where((file) => 
        file.path.contains('chat_') && file.path.endsWith('.json')
      ).toList();

      List<ChatListItem> chats = [];
      
      for (var file in chatFiles) {
        try {
          final String contents = await File(file.path).readAsString();
          final List<dynamic> messagesList = json.decode(contents);
          
          if (messagesList.isNotEmpty) {
            final lastMessage = messagesList.last;
            final userId = file.path.split('chat_').last.split('.json').first;
            
            // Get user info from post data (simplified for demo)
            final userInfo = _getUserInfo(userId);
            
            chats.add(ChatListItem(
              userId: userId,
              userName: userInfo['displayName'] ?? 'Unknown User',
              userAvatar: userInfo['userAvatar'] ?? 'assets/images/default_avatar.jpg',
              lastMessage: lastMessage['text'] ?? '',
              timestamp: DateTime.parse(lastMessage['timestamp']),
              unreadCount: 0, // You can implement unread count logic
            ));
          }
        } catch (e) {
          // Handle individual file errors
        }
      }
      
      // Sort by timestamp (most recent first)
      chats.sort((a, b) => b.timestamp.compareTo(a.timestamp));
      
      setState(() {
        chatList = chats;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  Map<String, dynamic> _getUserInfo(String userId) {
    // Mock user data - in real app, this would come from a database
    final mockUsers = {
      '1': {'displayName': 'Emma Thompson', 'userAvatar': 'assets/post/1/user.jpg'},
      '2': {'displayName': 'Mike Chen', 'userAvatar': 'assets/post/2/user.jpg'},
      '3': {'displayName': 'Sarah Williams', 'userAvatar': 'assets/post/3/user.jpg'},
      '4': {'displayName': 'Alex Rodriguez', 'userAvatar': 'assets/post/4/user.jpg'},
      '5': {'displayName': 'Lisa Anderson', 'userAvatar': 'assets/post/5/user.jpg'},
      '6': {'displayName': 'David Kumar', 'userAvatar': 'assets/post/6/user.jpg'},
      '7': {'displayName': 'Maria Santos', 'userAvatar': 'assets/post/7/user.jpg'},
      '8': {'displayName': 'James Wilson', 'userAvatar': 'assets/post/8/user.jpg'},
      '9': {'displayName': 'Sophie Martin', 'userAvatar': 'assets/post/9/user.jpg'},
      '10': {'displayName': 'Carlos Mendez', 'userAvatar': 'assets/post/10/user.jpg'},
      '11': {'displayName': 'Anna Kowalski', 'userAvatar': 'assets/post/11/user.jpg'},
      '12': {'displayName': 'Yuki Tanaka', 'userAvatar': 'assets/post/12/user.jpg'},
      '13': {'displayName': 'Hans Mueller', 'userAvatar': 'assets/post/13/user.jpg'},
      '14': {'displayName': 'Elena Petrov', 'userAvatar': 'assets/post/14/user.jpg'},
      '15': {'displayName': 'Lucas Silva', 'userAvatar': 'assets/post/15/user.jpg'},
      '16': {'displayName': 'Isabella Rossi', 'userAvatar': 'assets/post/16/user.jpg'},
    };
    
    return mockUsers[userId] ?? {'displayName': 'Unknown User', 'userAvatar': 'assets/images/default_avatar.jpg'};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top Image
          Container(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'assets/images/jexhor_chatlist_top.jpg',
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
          
          // Chat List
          Expanded(
            child: Container(
              color: Colors.white,
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : chatList.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat_bubble_outline,
                                size: 64,
                                color: Colors.grey[400],
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'No conversations yet',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Start chatting with other pet lovers!',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        )
                      : ListView.builder(
                          itemCount: chatList.length,
                          itemBuilder: (context, index) {
                            final chat = chatList[index];
                            return _buildChatItem(chat);
                          },
                        ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatItem(ChatListItem chat) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[200]!,
            width: 0.5,
          ),
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(chat.userAvatar),
          onBackgroundImageError: (exception, stackTrace) {
            // Handle error
          },
        ),
        title: Text(
          chat.userName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppConstants.textPrimary,
          ),
        ),
        subtitle: Text(
          chat.lastMessage,
          style: TextStyle(
            fontSize: 14,
            color: AppConstants.textSecondary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              _formatTime(chat.timestamp),
              style: TextStyle(
                fontSize: 12,
                color: AppConstants.textLight,
              ),
            ),
            if (chat.unreadCount > 0) ...[
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: AppConstants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  chat.unreadCount.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ],
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ChatDetailScreen(
                user: {
                  'userId': chat.userId,
                  'displayName': chat.userName,
                  'userAvatar': chat.userAvatar,
                },
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatTime(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);

    if (difference.inDays > 0) {
      return '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m';
    } else {
      return 'now';
    }
  }
}

class ChatListItem {
  final String userId;
  final String userName;
  final String userAvatar;
  final String lastMessage;
  final DateTime timestamp;
  final int unreadCount;

  ChatListItem({
    required this.userId,
    required this.userName,
    required this.userAvatar,
    required this.lastMessage,
    required this.timestamp,
    this.unreadCount = 0,
  });
} 