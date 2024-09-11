import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Mainpagelotto.dart';
import 'package:flutter_application_1/Walletpage.dart';

class Navbar extends StatefulWidget {
  final int selectedIndex; // Added parameter

  const Navbar({super.key, required this.selectedIndex}); // Constructor updated

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  late Widget currentPage; // Use late to initialize in initState
  late int _selectedIndex; // Use late to initialize in initState

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex; // Initialize with the selectedIndex from widget
    // Set the current page based on initial selectedIndex
    if (_selectedIndex == 0) {
      currentPage = const Mainpagelotto();
    } else if (_selectedIndex == 1) {
      currentPage = const Walletpage();
    } else {
      currentPage = Container(); // Default or some other widget
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            backgroundColor: const Color(0xFF0085FF),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.pageview), label: "ตรวจสอบรางวัล"),
              BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: "จัดการข้อมูลสมาชิก"),
            ],
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
                if (value == 0) {
                  log("MainPage");
                  currentPage = const Mainpagelotto();
                } else if (value == 1) {
                  log("WalletPage");
                  currentPage = const Walletpage();
                } else if (value == 2) {
                  log("ProfilePage");
                  // Update to Profile page if needed
                  // currentPage = const ProfilePage(); // Assuming you have a ProfilePage
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
