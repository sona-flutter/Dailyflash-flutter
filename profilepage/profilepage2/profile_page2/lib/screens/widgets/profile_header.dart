import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';
import '../../../models/salon_profile.dart';

class ProfileHeader extends StatelessWidget {
  final SalonProfile profile;

  const ProfileHeader({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: AppColors.cardColor,
          child: profile.imageUrl != null
              ? ClipOval(
                  child: Image.network(
                    profile.imageUrl!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                )
              : Icon(
                  Icons.person, // Use the person icon as a fallback
                  size: 50,
                  color: AppColors.textPrimaryColor,
                ),
        ),
        const SizedBox(height: 16),
        Text(profile.name, style: AppTextStyles.heading),
        Text(profile.email ?? 'No email provided',
            style: AppTextStyles.bodyText),
      ],
    );
  }
}
