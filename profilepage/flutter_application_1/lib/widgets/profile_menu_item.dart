// lib/widgets/profile_menu_item.dart
import 'package:flutter/material.dart';
import '../models/menu_item.dart';

class ProfileMenuItem extends StatelessWidget {
  final MenuItem menuItem;

  const ProfileMenuItem({
    super.key,
    required this.menuItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          menuItem.icon,
          color: Colors.white,
        ),
        title: Text(
          menuItem.title,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
        onTap: menuItem.onTap,
      ),
    );
  }
}
