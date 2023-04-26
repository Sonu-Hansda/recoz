import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recoz/providers/routing.dart';
import 'package:recoz/screens/home.dart';
import 'package:recoz/screens/notification.dart';
import 'package:recoz/screens/search.dart';
import 'package:recoz/screens/settings.dart';
import '../components/app_header.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});
  static const List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    NotificationScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appHeader(),
      body: _pages[Provider.of<Routing>(context).currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        currentIndex: Provider.of<Routing>(context).currentIndex,
        onTap: (index) => Provider.of<Routing>(context, listen: false)
            .setCurrentIndex = index,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
        ],
      ),
    );
  }
}
