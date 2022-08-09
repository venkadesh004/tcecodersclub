import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/userMenu.dart';

class CodePage extends StatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
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
            ],
          ),
        ),
      ),
    );
  }
}
