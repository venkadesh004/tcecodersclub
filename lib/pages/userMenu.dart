import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/usersPage.dart';

class UserMenu extends StatelessWidget {
  const UserMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(217, 217, 217, 0.8),
          borderRadius: BorderRadius.circular(50)
      ),
      child: IconButton(
        icon: const Icon(Icons.person),
        splashRadius: 1,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const UsersPage()));
        },
      )
    );
  }
}