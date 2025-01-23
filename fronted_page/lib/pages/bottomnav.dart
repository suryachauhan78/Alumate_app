import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:fronted_page/pages/add.dart';
import 'package:fronted_page/pages/chat.dart';
import 'package:fronted_page/pages/home.dart';
import 'package:fronted_page/pages/message.dart';

import 'package:fronted_page/pages/profile.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int currentTabIndex = 0;
  late List<Widget> pages;

  late Widget currentPage;
  late Home home;
  late Chat chat;
  late Add add;
late Message message;
  late Profile profile;
  @override
  void initState() {
    super.initState();
    home = const Home();
    chat = const Chat();
    add = const Add();
    message = const Message();
    profile = const Profile();

    pages = [home, chat, add,message, profile];
    currentPage = const Home();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: const Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: const [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.chat_bubble_outline,
              color: Colors.white,
            ),
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
             Icon(
              Icons.person_outlined,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
