// lib/screens/profile/widgets/profile_menu_item.dart
import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ProfileMenuItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppColors.textPrimaryColor),
        title: Text(title, style: AppTextStyles.subheading),
        trailing:
            Icon(Icons.chevron_right, color: AppColors.textSecondaryColor),
        onTap: onTap,
      ),
    );
  }
}
