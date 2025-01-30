// lib/screens/profile/profile_screen.dart
import 'package:flutter/material.dart';

import 'package:profile_page2/constants/app_text_styles.dart';
import 'package:profile_page2/models/salon_profile.dart';
import 'package:profile_page2/screens/widgets/profile_bottom_nav.dart';
import 'package:profile_page2/screens/widgets/profile_header.dart';
import 'package:profile_page2/screens/widgets/profile_menu_item.dart';
import '../../constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  final SalonProfile profile = SalonProfile.dummy();

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ProfileHeader(profile: profile),
                SizedBox(height: 32),
                ProfileMenuItem(
                  icon: Icons.history,
                  title: 'Appointment History',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.edit,
                  title: 'Update Profile Information',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.schedule,
                  title: 'Transaction History',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.content_cut,
                  title: 'Request Home Services',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.people,
                  title: 'Dash me Small 2k',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.support_agent,
                  title: 'Customer Care Services',
                  onTap: () {},
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Sign Out', style: AppTextStyles.subheading),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ProfileBottomNav(),
    );
  }
}
