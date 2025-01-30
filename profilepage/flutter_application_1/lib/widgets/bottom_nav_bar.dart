// lib/widgets/bottom_nav_bar.dart
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        border: Border(
          top: BorderSide(color: Colors.grey[800]!, width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavBarItem(icon: Icons.home, label: 'Home', isSelected: true),
          _NavBarItem(icon: Icons.search, label: 'Popular Styles'),
          _NavBarItem(icon: Icons.wallet, label: 'Fund Wallet'),
          _NavBarItem(icon: Icons.settings, label: 'Settings'),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const _NavBarItem({
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? Colors.orange : Colors.grey,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: isSelected ? Colors.orange : Colors.grey,
          ),
        ),
      ],
    );
  }
}
