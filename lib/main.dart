import 'package:flutter/material.dart';
import 'utils/constants.dart';
import 'screens/login_screen.dart';
import 'screens/feed_screen.dart';
import 'screens/discover_screen.dart';
import 'screens/community_screen.dart';
import 'screens/profile_screen_new.dart';
import 'widgets/custom_tab_icon.dart';

void main() {
  runApp(const JexhorApp());
}

class JexhorApp extends StatelessWidget {
  const JexhorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppConstants.primaryColor,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppConstants.primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppConstants.primaryColor,
          foregroundColor: Colors.white,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

class JexhorHomePage extends StatefulWidget {
  const JexhorHomePage({super.key});

  @override
  State<JexhorHomePage> createState() => _JexhorHomePageState();
}

class _JexhorHomePageState extends State<JexhorHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    FeedScreen(),
    DiscoverScreen(),
    CommunityScreen(),
    ProfileScreenNew(),
  ];

  static const List<String> _tabIcons = [
    'assets/images/tabnor/jexhor_tab_1_nor.png',
    'assets/images/tabnor/jexhor_tab_2_nor.png',
    'assets/images/tabnor/jexhor_tab_3_nor.png',
    'assets/images/tabnor/jexhor_tab_4_nor.png',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                _tabIcons.length,
                (index) => GestureDetector(
                  onTap: () => _onItemTapped(index),
                  child: CustomTabIcon(
                    imagePath: _tabIcons[index],
                    isSelected: _selectedIndex == index,
                    size: 32,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
