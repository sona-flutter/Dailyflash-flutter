// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import 'package:salon_app/widgets/booking_status_card.dart';
import '../widgets/profile_menu_item.dart';
import '../widgets/bottom_nav_bar.dart';
import '../models/menu_item.dart';
import 'booking_success_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> menuItems = [
      MenuItem(
        icon: Icons.history,
        title: 'Transaction History',
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.person_outline,
        title: 'Update Profile Information',
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.home_repair_service,
        title: 'Request Home Service',
        onTap: () {
          // Example navigation to booking success screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingSuccessScreen(
                reference: '458823379012',
                serviceName: 'PRO HAIR CUTZ',
                status: BookingStatus.success,
              ),
            ),
          );
        },
      ),
      MenuItem(
        icon: Icons.attach_money,
        title: 'Dash me Small 2k',
        onTap: () {},
      ),
      MenuItem(
        icon: Icons.support_agent,
        title: 'Customer Care Service',
        onTap: () {},
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                        child:
                            Icon(Icons.person, size: 50, color: Colors.white),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Cre8steve Dev',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        'cre8stevedev@gmail.com',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 30),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: menuItems.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 12),
                        itemBuilder: (context, index) => ProfileMenuItem(
                          menuItem: menuItems[index],
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('Sign Out'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
