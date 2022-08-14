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
          Navigator.of(context).push(_createRoute());
        },
      )
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const UsersPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}