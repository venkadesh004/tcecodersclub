import 'package:flutter/material.dart';
import 'package:tcecodersclub/constants.dart';
import 'package:tcecodersclub/main.dart';
import 'package:tcecodersclub/pages/userEditingPage.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const UserEditPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
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

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const MainPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, -1.0);
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

class _UsersPageState extends State<UsersPage> {

  static const double leftHeadingColumnSize = 14;
  static const double rightDataColumnSize = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          splashRadius: 1,
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(_createRoute2());
          },
        ),
        actions: [
          IconButton(
              splashRadius: 1,
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              icon: const Icon(
                Icons.edit_outlined,
                color: Colors.black,
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 120,
                backgroundImage: NetworkImage('https://st.depositphotos.com/2101611/3925/v/600/depositphotos_39258143-stock-illustration-businessman-avatar-profile-picture.jpg'),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Text(
                            "Name",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: leftHeadingColumnSize,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container(
                          width: 110,
                          child: Text(
                            userName,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              fontSize: rightDataColumnSize,
                              fontWeight: FontWeight.normal
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "Bio",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: leftHeadingColumnSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              bio,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: rightDataColumnSize,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "Email",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: leftHeadingColumnSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              email,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: rightDataColumnSize,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "Full Name",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: leftHeadingColumnSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              fullName,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: rightDataColumnSize,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "Department",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: leftHeadingColumnSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              department,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: rightDataColumnSize,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "Year",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: leftHeadingColumnSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              year,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: rightDataColumnSize,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "Register Number",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: leftHeadingColumnSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            child: Text(
                              regNo,
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                  fontSize: rightDataColumnSize,
                                  fontWeight: FontWeight.normal
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  )
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Helpline Number: 8610475929",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 10,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
