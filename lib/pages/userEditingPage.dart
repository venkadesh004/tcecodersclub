import 'package:flutter/material.dart';
import 'package:tcecodersclub/constants.dart';
import 'package:tcecodersclub/pages/usersPage.dart';

class UserEditPage extends StatefulWidget {
  const UserEditPage({Key? key}) : super(key: key);
  @override
  State<UserEditPage> createState() => _UserEditPageState();
}

class _UserEditPageState extends State<UserEditPage> {

  TextEditingController _newName = new TextEditingController();
  TextEditingController _bio = new TextEditingController();

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
                print(_newName.text);
                print(_bio.text);
                if (_newName.text != '') {
                  userName = _newName.text;
                }
                if (_bio.text != '') {
                  bio = _bio.text;
                }
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UsersPage()));
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
                      TextFormField(
                        controller: _bio,
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Bio'
                        )
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
