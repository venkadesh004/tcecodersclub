import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/userMenu.dart';

class InstitutionPage extends StatefulWidget {
  const InstitutionPage({Key? key}) : super(key: key);

  @override
  State<InstitutionPage> createState() => _InstitutionPageState();
}

class _InstitutionPageState extends State<InstitutionPage> {
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
