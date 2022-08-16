import 'package:flutter/material.dart';
import 'package:tcecodersclub/introPage.dart';
import 'package:tcecodersclub/pages/commentBox.dart';
import 'package:tcecodersclub/pages/homePage.dart';
import 'package:tcecodersclub/pages/institutionPage.dart';
import 'package:tcecodersclub/pages/chatPage.dart';
import 'package:tcecodersclub/pages/calenderPage.dart';
import 'package:tcecodersclub/pages/codePage.dart';
import 'package:tcecodersclub/constants.dart';

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

  final screens = const [
    HomePage(),
    InstitutionPage(),
    CodePage(),
    CalenderPage(),
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
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black45,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
            label: 'Institution'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.code),
              label: 'Events'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calender'
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
