import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:masrif/views/auth/signup.dart';
import 'package:masrif/views/home/home_screen.dart';
import 'package:masrif/views/notification/notification_screen.dart';
import 'package:masrif/views/portfolio/portfolio.dart';
import 'package:masrif/views/wallet/wallet_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 2;
  List<Widget> listWidgets = const [
    Portfolio(),
    WalletScreen(),
    HomeScreen(),
    NotificationScreen(),
    SignUpScreen()
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listWidgets[selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        activeColor: Colors.black,
        style: TabStyle.fixedCircle,
        color: Colors.grey,
        elevation: 5,
        backgroundColor: Colors.white,
        initialActiveIndex: selectedIndex,
        items: const [
          TabItem(
            icon: Icon(Icons.circle),
            title: 'Portfolio',
          ),
          TabItem(icon: Icon(Icons.wallet), title: 'Wallet'),
          TabItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: 'Home'),
          TabItem(
              icon: Icon(
                Icons.notifications,
              ),
              title: 'Notification'),
          TabItem(
              icon: Icon(
                Icons.more,
              ),
              title: 'More'),
        ],
        onTap: (index) {
          onItemTapped(index);
        },
      ),
    );
  }
}
