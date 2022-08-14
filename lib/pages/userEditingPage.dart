import 'package:flutter/material.dart';
import 'package:tcecodersclub/constants.dart';
import 'package:tcecodersclub/pages/usersPage.dart';

class UserEditPage extends StatefulWidget {
  const UserEditPage({Key? key}) : super(key: key);
  @override
  State<UserEditPage> createState() => _UserEditPageState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const UsersPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-1.0, 0.0);
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

class _UserEditPageState extends State<UserEditPage> {

  TextEditingController _newName = new TextEditingController();
  TextEditingController _bio = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _fullName = new TextEditingController();
  String _department = department;
  String _year = year;
  TextEditingController _regNo = new TextEditingController();

  List<String> departments = ['CSE', 'IT', 'MECHANICAL', 'ECE', 'CSBS', "EEE", 'CIVIL', 'MECHATRONICS', 'ARCHITECTURE', 'DATA SCIENCE'];
  List<String> years = ['I', 'II', 'III', 'IV'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          splashRadius: 1,
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
                // print(_newName.text);
                // print(_bio.text);
                if (_newName.text != '') {
                  userName = _newName.text;
                }
                if (_bio.text != '') {
                  bio = _bio.text;
                }
                if (_email.text != '') {
                  email = _email.text;
                }
                if (_fullName.text != '') {
                  fullName = _fullName.text;
                }
                if (_department != '') {
                  department = _department;
                }
                if (_year != '') {
                  year = _year;
                }
                if (_regNo.text != '') {
                  regNo = _regNo.text;
                }
                Navigator.of(context).push(_createRoute());
              },
              child: const Text(
                "Save",
                style: TextStyle(
                  color: Colors.blue
                ),
              ),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: TextFormField(
                          controller: _newName,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'UserName',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: TextFormField(
                          controller: _bio,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Bio'
                          )
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: TextFormField(
                            controller: _email,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Email'
                            )
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: TextFormField(
                            controller: _fullName,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Full Name'
                            )
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: DropdownButton<String>(
                          value: _department,
                          elevation: 0,
                          onChanged: (String? newValue) {
                            setState(() {
                              _department = newValue!;
                            });
                          },
                          items: departments.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: DropdownButton<String>(
                          value: _year,
                          elevation: 0,
                          onChanged: (String? newValue) {
                            setState(() {
                              _year = newValue!;
                            });
                          },
                          items: years.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: TextFormField(
                            controller: _regNo,
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Register number'
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 70),
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
