import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tcecodersclub/main.dart';
import 'package:tcecodersclub/registerPage.dart';
import 'package:tcecodersclub/loginPage.dart';

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const RegisterPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-0.75, 0.0);
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
    pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, -0.75);
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

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.jpeg'
                ),
                fit: BoxFit.fill,
                opacity: 0.4
              )
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 140),
                    child: const Image(
                        image: AssetImage('assets/images/logoTCE.png')
                    ),
                  ),
                  const Text(
                    "Thiagarajar College Of Engineering\nMadurai",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 20),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            )
                          )
                        ),
                        onPressed: () {
                          Navigator.of(context).push(_createRoute2());
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          width: 200,
                          height: 60,
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white
                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 100),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(50)),
                                )
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).push(_createRoute());
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          width: 200,
                          height: 60,
                          child: const Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        )
                    ),
                  ),
                  const Text(
                    "Department of Computer Science and Engineering",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
