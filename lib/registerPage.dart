import 'package:flutter/material.dart';
import 'package:tcecodersclub/loginPage.dart';
import 'package:tcecodersclub/main.dart';
import 'package:tcecodersclub/pages/otpCheck.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 0.75);
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
    pageBuilder: (context, animation, secondaryAnimation) => const OTPValidation(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.75, 0.0);
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

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _fullNameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _registerNumberController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController = new TextEditingController();

  List<String> departments = ['DEPARTMENT', 'CSE', 'IT', 'MECHANICAL', 'ECE', 'CSBS', "EEE", 'CIVIL', 'MECHATRONICS', 'ARCHITECTURE', 'DATA SCIENCE'];
  List<String> year = ['YEAR', 'I', 'II', 'III', 'IV'];

  String dropdownDepartment = 'DEPARTMENT';
  String dropdownYear = 'YEAR';

  var eyeOpen1 = true;
  var eye1Color = Colors.black;
  var eye1Icon = Icons.remove_red_eye;

  var eyeOpen2 = true;
  var eye2Color = Colors.black;
  var eye2Icon = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: const Text(
                "Login"
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: const Text(
                "Department Of Computer Science\n And Engineering",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
            const Text(
              "Registeration Form",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 20, left: 40, right: 40),
              child: TextFormField(
                controller: _userNameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username'
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
              child: TextFormField(
                controller: _fullNameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name'
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email'
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
              child: DropdownButton<String>(
                value: dropdownDepartment,
                elevation: 0,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownDepartment = newValue!;
                  });
                },
                items: departments.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
                child: DropdownButton<String>(
                  value: dropdownYear,
                  elevation: 0,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownYear = newValue!;
                    });
                  },
                  items: year.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
              child: TextFormField(
                controller: _registerNumberController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Reg Number'
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 130,
                    height: 50,
                    child: TextFormField(
                      obscureText: eyeOpen1,
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter a Password'
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (eyeOpen1 == true) {
                            eyeOpen1 = false;
                            eye1Icon = Icons.remove_red_eye_outlined;
                            eye1Color = Colors.blue;
                          } else {
                            eyeOpen1 = true;
                            eye1Icon = Icons.remove_red_eye;
                            eye1Color = Colors.black;
                          }
                        });
                      },
                      icon: Icon(
                        eye1Icon,
                        color: eye1Color,
                      )
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 130,
                    height: 50,
                    child: TextFormField(
                      obscureText: eyeOpen2,
                      controller: _confirmPasswordController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter a Password'
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          if (eyeOpen2 == true) {
                            eyeOpen2 = false;
                            eye2Icon = Icons.remove_red_eye_outlined;
                            eye2Color = Colors.blue;
                          } else {
                            eyeOpen2 = true;
                            eye2Icon = Icons.remove_red_eye;
                            eye2Color = Colors.black;
                          }
                        });
                      },
                      icon: Icon(
                        eye2Icon,
                        color: eye2Color,
                      )
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    if (_userNameController.text == '' || _fullNameController.text == '' || _emailController.text == '' || dropdownDepartment == 'DEPARTMENT' || dropdownYear == 'YEAR' || _registerNumberController.text == '' || _passwordController.text == '' || _confirmPasswordController.text == '') {
                      print('Complete!');
                      final snackBar = SnackBar(
                          content: const Text("Please complete the fields"),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else if (_passwordController.text != _confirmPasswordController.text) {
                      print('Password Are not matching');
                      final snackBar = SnackBar(
                        content: const Text("Passwords are not matching"),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      Navigator.of(context).push(_createRoute2());
                    }
                  },
                  child: const Text(
                    "Submit"
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}