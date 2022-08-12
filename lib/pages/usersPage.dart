import 'package:flutter/material.dart';
import 'package:tcecodersclub/constants.dart';
import 'package:tcecodersclub/main.dart';
import 'package:tcecodersclub/pages/userEditingPage.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

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
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
        actions: [
          IconButton(
              splashRadius: 1,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UserEditPage()));
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
                              fontSize: 17,
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
                              fontSize: 17,
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
                                  fontSize: 17,
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
                                  fontSize: 17,
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
