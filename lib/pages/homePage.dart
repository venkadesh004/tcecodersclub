import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/userMenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              UserMenu(),
              UserWelcome()
            ],
          ),
        ),
      ),
    );
  }
}

class UserWelcome extends StatefulWidget {
  const UserWelcome({Key? key}) : super(key: key);

  @override
  State<UserWelcome> createState() => _UserWelcomeState();
}

class _UserWelcomeState extends State<UserWelcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        const Text(
          "Good Morning",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Poppins"
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, bottom: 20),
          child: const Text(
            "Coders",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}
