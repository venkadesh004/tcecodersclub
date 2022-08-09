import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tcecodersclub/pages/homePage.dart';
import 'package:tcecodersclub/pages/institutionPage.dart';
import 'package:tcecodersclub/pages/chatPage.dart';
import 'package:tcecodersclub/pages/feedPage.dart';
import 'package:tcecodersclub/pages/codePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final screens = const [
    HomePage(),
    InstitutionPage(),
    CodePage(),
    FeedPage(),
    ChatPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
            label: 'Institution'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.code),
              label: 'Code'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.feed),
              label: 'Feed'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment),
              label: 'Chat'
          )
        ],
      ),
    );
  }
}