import '../models/pet.dart';
import '../models/user.dart';
import '../models/post.dart';

class MockDataService {
  static final List<User> _users = [
    User(
      id: '1',
      username: 'petlover123',
      nickname: '宠物爱好者',
      avatarUrl: 'https://picsum.photos/200/200?random=1',
      bio: '热爱宠物，分享美好时光',
      followerCount: 1250,
      followingCount: 89,
      postCount: 45,
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now(),
      isVerified: true,
    ),
    User(
      id: '2',
      username: 'dogmom',
      nickname: '狗狗妈妈',
      avatarUrl: 'https://picsum.photos/200/200?random=2',
      bio: '家有两只可爱的小狗',
      followerCount: 890,
      followingCount: 156,
      postCount: 32,
      createdAt: DateTime.now().subtract(const Duration(days: 200)),
      updatedAt: DateTime.now(),
      isVerified: false,
    ),
    User(
      id: '3',
      username: 'catlover',
      nickname: '猫咪控',
      avatarUrl: 'https://picsum.photos/200/200?random=3',
      bio: '专业撸猫20年',
      followerCount: 2100,
      followingCount: 67,
      postCount: 78,
      createdAt: DateTime.now().subtract(const Duration(days: 500)),
      updatedAt: DateTime.now(),
      isVerified: true,
    ),
  ];

  static final List<Pet> _pets = [
    Pet(
      id: '1',
      name: '小白',
      type: '狗',
      breed: '金毛寻回犬',
      ownerId: '1',
      avatarUrl: 'https://picsum.photos/200/200?random=10',
      description: '活泼可爱的金毛，喜欢玩球和游泳',
      birthDate: DateTime.now().subtract(const Duration(days: 730)),
      weight: 25.5,
      color: '金色',
      tags: ['金毛', '活泼', '友善'],
      createdAt: DateTime.now().subtract(const Duration(days: 365)),
      updatedAt: DateTime.now(),
    ),
    Pet(
      id: '2',
      name: '咪咪',
      type: '猫',
      breed: '英国短毛猫',
      ownerId: '3',
      avatarUrl: 'https://picsum.photos/200/200?random=11',
      description: '优雅的英短，喜欢晒太阳',
      birthDate: DateTime.now().subtract(const Duration(days: 1095)),
      weight: 4.2,
      color: '银渐层',
      tags: ['英短', '优雅', '安静'],
      createdAt: DateTime.now().subtract(const Duration(days: 500)),
      updatedAt: DateTime.now(),
    ),
    Pet(
      id: '3',
      name: '旺财',
      type: '狗',
      breed: '拉布拉多',
      ownerId: '2',
      avatarUrl: 'https://picsum.photos/200/200?random=12',
      description: '忠诚的拉布拉多，是家庭的好伙伴',
      birthDate: DateTime.now().subtract(const Duration(days: 1460)),
      weight: 30.0,
      color: '黑色',
      tags: ['拉布拉多', '忠诚', '聪明'],
      createdAt: DateTime.now().subtract(const Duration(days: 200)),
      updatedAt: DateTime.now(),
    ),
  ];

  static final List<Post> _posts = [
    Post(
      id: '1',
      userId: '1',
      petId: '1',
      content: '今天带小白去公园玩，它特别开心！金毛真的是最友善的狗狗了 🐕',
      imageUrls: [
        'https://picsum.photos/400/400?random=20',
        'https://picsum.photos/400/400?random=21',
      ],
      tags: ['金毛', '公园', '开心'],
      likeCount: 128,
      commentCount: 15,
      shareCount: 8,
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      updatedAt: DateTime.now().subtract(const Duration(hours: 2)),
      isLiked: false,
    ),
    Post(
      id: '2',
      userId: '3',
      petId: '2',
      content: '咪咪今天又在阳台上晒太阳了，这个姿势太可爱了 😸',
      imageUrls: [
        'https://picsum.photos/400/400?random=22',
      ],
      tags: ['英短', '晒太阳', '可爱'],
      likeCount: 256,
      commentCount: 23,
      shareCount: 12,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      updatedAt: DateTime.now().subtract(const Duration(hours: 5)),
      isLiked: true,
    ),
    Post(
      id: '3',
      userId: '2',
      petId: '3',
      content: '旺财学会了新技能！它现在可以帮我拿拖鞋了，太聪明了！',
      imageUrls: [
        'https://picsum.photos/400/400?random=23',
        'https://picsum.photos/400/400?random=24',
        'https://picsum.photos/400/400?random=25',
      ],
      tags: ['拉布拉多', '训练', '聪明'],
      likeCount: 89,
      commentCount: 7,
      shareCount: 3,
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      updatedAt: DateTime.now().subtract(const Duration(days: 1)),
      isLiked: false,
    ),
    Post(
      id: '4',
      userId: '1',
      content: '分享一个宠物护理小贴士：定期给宠物梳毛不仅能保持毛发健康，还能增进感情哦！',
      imageUrls: [],
      tags: ['护理', '小贴士', '健康'],
      likeCount: 67,
      commentCount: 12,
      shareCount: 5,
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
      updatedAt: DateTime.now().subtract(const Duration(days: 2)),
      isLiked: false,
    ),
  ];

  // 获取所有用户
  static List<User> getAllUsers() {
    return List.from(_users);
  }

  // 根据ID获取用户
  static User? getUserById(String id) {
    try {
      return _users.firstWhere((user) => user.id == id);
    } catch (e) {
      return null;
    }
  }

  // 获取所有宠物
  static List<Pet> getAllPets() {
    return List.from(_pets);
  }

  // 根据ID获取宠物
  static Pet? getPetById(String id) {
    try {
      return _pets.firstWhere((pet) => pet.id == id);
    } catch (e) {
      return null;
    }
  }

  // 根据用户ID获取宠物
  static List<Pet> getPetsByUserId(String userId) {
    return _pets.where((pet) => pet.ownerId == userId).toList();
  }

  // 获取所有帖子
  static List<Post> getAllPosts() {
    return List.from(_posts);
  }

  // 根据ID获取帖子
  static Post? getPostById(String id) {
    try {
      return _posts.firstWhere((post) => post.id == id);
    } catch (e) {
      return null;
    }
  }

  // 根据用户ID获取帖子
  static List<Post> getPostsByUserId(String userId) {
    return _posts.where((post) => post.userId == userId).toList();
  }

  // 获取热门帖子（按点赞数排序）
  static List<Post> getHotPosts({int limit = 10}) {
    final sortedPosts = List<Post>.from(_posts);
    sortedPosts.sort((a, b) => b.likeCount.compareTo(a.likeCount));
    return sortedPosts.take(limit).toList();
  }

  // 获取最新帖子（按时间排序）
  static List<Post> getLatestPosts({int limit = 10}) {
    final sortedPosts = List<Post>.from(_posts);
    sortedPosts.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    return sortedPosts.take(limit).toList();
  }
} 