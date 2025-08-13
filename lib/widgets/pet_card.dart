import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../utils/constants.dart';

class PetCard extends StatelessWidget {
  final Pet pet;
  final VoidCallback? onTap;
  final bool showOwner;

  const PetCard({
    super.key,
    required this.pet,
    this.onTap,
    this.showOwner = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(AppConstants.paddingSmall),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.paddingMedium),
          child: Row(
            children: [
              // 宠物头像
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                  color: AppConstants.primaryColor.withOpacity(0.1),
                ),
                child: pet.avatarUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(AppConstants.radiusMedium),
                        child: Image.network(
                          pet.avatarUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(
                              Icons.pets,
                              color: AppConstants.primaryColor,
                              size: 30,
                            );
                          },
                        ),
                      )
                    : Icon(
                        Icons.pets,
                        color: AppConstants.primaryColor,
                        size: 30,
                      ),
              ),
              const SizedBox(width: AppConstants.paddingMedium),
              // 宠物信息
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pet.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppConstants.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${pet.type} · ${pet.breed}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppConstants.textSecondary,
                      ),
                    ),
                    if (pet.color != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        '颜色: ${pet.color}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppConstants.textLight,
                        ),
                      ),
                    ],
                    if (pet.weight != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        '体重: ${pet.weight}kg',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppConstants.textLight,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              // 标签
              if (pet.tags.isNotEmpty)
                Wrap(
                  spacing: 4,
                  children: pet.tags.take(2).map((tag) {
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
                        tag,
                        style: const TextStyle(
                          fontSize: 10,
                          color: AppConstants.primaryColor,
                        ),
                      ),
                    );
                  }).toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
} 