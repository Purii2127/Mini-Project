import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Mainpagelotto.dart';
import 'package:flutter_application_1/Walletpage.dart';
import 'package:flutter_application_1/information.dart';

class UserProfile extends StatefulWidget {
  final int selectedIndex;

  const UserProfile({super.key, required this.selectedIndex});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  late Widget currentPage;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;

    // Set the current page based on initial selectedIndex
    if (_selectedIndex == 0) {
      currentPage = const Mainpagelotto();
    } else if (_selectedIndex == 1) {
      currentPage = const Walletpage();
    } else if (_selectedIndex == 2) {
      currentPage = const Information();
    } else {
      currentPage = Container(); // Default or some other widget
    }
  }

  @override
  Widget build(BuildContext context) {
    // Define the icon and label for the Profile tab based on _selectedIndex
    IconData profileIcon2 = _selectedIndex == 2 ? Icons.receipt_long : Icons.account_balance_wallet;
    String profileLabel2 = _selectedIndex == 2 ? "ล็อตเตอรี่" : "โอนเงิน";
    IconData profileIcon3 = _selectedIndex == 2 ? Icons.account_balance_wallet : Icons.person_pin;
    String profileLabel3 = _selectedIndex == 2 ? "กระเป๋าตัง" : "Profile";

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
            items: [
              const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                 BottomNavigationBarItem(icon: Icon(profileIcon2), label: profileLabel2),
              BottomNavigationBarItem(icon: Icon(profileIcon3), label: profileLabel3),
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
                  currentPage = const Information();
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
