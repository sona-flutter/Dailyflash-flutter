import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const DashboardPage(),
    const TransactionPage(),
    const TaskPage(),
    const DocumentsPage(),
    const StorePage(),
    const NotificationPage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  final List<NavigationItem> _navigationItems = [
    NavigationItem(icon: Icons.dashboard_outlined, label: 'Dashboard'),
    NavigationItem(icon: Icons.receipt_long_outlined, label: 'Transaction'),
    NavigationItem(icon: Icons.task_outlined, label: 'Task'),
    NavigationItem(icon: Icons.document_scanner_outlined, label: 'Documents'),
    NavigationItem(icon: Icons.store_outlined, label: 'Store'),
    NavigationItem(icon: Icons.notifications_outlined, label: 'Notification'),
    NavigationItem(icon: Icons.person_outline, label: 'Profile'),
    NavigationItem(icon: Icons.settings_outlined, label: 'Settings'),
  ];

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      body: Row(
        children: [
          if (!isMobile)
            _buildSidebar(), // Show Sidebar only for Tablet/Desktop
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
      drawer: isMobile ? _buildDrawer() : null, // Show Drawer only for Mobile
    );
  }

  Widget _buildSidebar() {
    return Container(
      width: 250,
      color: const Color(0xFF121212),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Image.asset(
            'assets/logo.png', // Replace with your logo
            height: 60,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _navigationItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    _navigationItems[index].icon,
                    color: _selectedIndex == index ? Colors.blue : Colors.white,
                  ),
                  title: Text(
                    _navigationItems[index].label,
                    style: TextStyle(
                      color:
                          _selectedIndex == index ? Colors.blue : Colors.white,
                      fontWeight: _selectedIndex == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  selected: _selectedIndex == index,
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: const Color(0xFF121212),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'assets/logo.png',
            height: 60,
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _navigationItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    _navigationItems[index].icon,
                    color: _selectedIndex == index ? Colors.blue : Colors.white,
                  ),
                  title: Text(
                    _navigationItems[index].label,
                    style: TextStyle(
                      color:
                          _selectedIndex == index ? Colors.blue : Colors.white,
                      fontWeight: _selectedIndex == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                  selected: _selectedIndex == index,
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                    Navigator.pop(context); // Close Drawer after selection
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NavigationItem {
  final IconData icon;
  final String label;
  NavigationItem({required this.icon, required this.label});
}

// Dummy Pages (Replace with your actual pages)
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Dashboard Page', style: TextStyle(fontSize: 24)));
  }
}

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Transaction Page', style: TextStyle(fontSize: 24)));
  }
}

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Task Page', style: TextStyle(fontSize: 24)));
  }
}

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Documents Page', style: TextStyle(fontSize: 24)));
  }
}

class StorePage extends StatelessWidget {
  const StorePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Store Page', style: TextStyle(fontSize: 24)));
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Notification Page', style: TextStyle(fontSize: 24)));
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Profile Page', style: TextStyle(fontSize: 24)));
  }
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Settings Page', style: TextStyle(fontSize: 24)));
  }
}
