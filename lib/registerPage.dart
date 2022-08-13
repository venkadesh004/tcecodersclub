import 'package:flutter/material.dart';
import 'package:tcecodersclub/loginPage.dart';
import 'package:tcecodersclub/main.dart';
import 'package:tcecodersclub/pages/otpCheck.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
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
              child: TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter a Password'
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, bottom: 20, left: 40, right: 40),
              child: TextFormField(
                controller: _confirmPasswordController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password'
                ),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const OTPValidation()));
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