import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import '../utils/constants.dart';

class CustomTabIcon extends StatelessWidget {
  final String imagePath;
  final bool isSelected;
  final double size;

  const CustomTabIcon({
    super.key,
    required this.imagePath,
    required this.isSelected,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          isSelected ? AppConstants.primaryColor : Colors.grey,
          BlendMode.srcIn,
        ),
        child: Image.asset(
          imagePath,
          width: size,
          height: size,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
} 