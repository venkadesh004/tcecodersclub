import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/userMenu.dart';
import 'package:tcecodersclub/pages/communityChat.dart';
import 'package:tcecodersclub/pages/trendingChat.dart';
import 'package:tcecodersclub/pages/pinnedChat.dart';

var selectedChat = 0;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              UserWelcome(),
              Chats(),
            ],
          ),
        ),
      ),
    );
  }
}

class UserWelcome extends StatefulWidget {
  const UserWelcome({Key? key}) : super(key: key);

  @override
  State<UserWelcome> createState() => _UserWelcomeState();
}

class _UserWelcomeState extends State<UserWelcome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        const Text(
          "Good Morning",
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Poppins"
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, bottom: 20),
          child: const Text(
            "Coders",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {

  var chat1Back = Colors.black;
  var chat1Text = Colors.white;
  var chat2Back = Colors.white;
  var chat2Text = Colors.black;
  var chat3Back = Colors.white;
  var chat3Text = Colors.black;

  final chatFrames = const [
    CommunityChat(),
    TrendingChat(),
    PinnedChat(),
  ];

  @override
  Widget build(BuildContext context) {

    if (selectedChat == 0) {
      chat1Back = Colors.black;
      chat1Text = Colors.white;
      chat2Back = Colors.white;
      chat2Text = Colors.black;
      chat3Back = Colors.white;
      chat3Text = Colors.black;
    } else if (selectedChat == 1) {
      chat1Back = Colors.white;
      chat1Text = Colors.black;
      chat2Back = Colors.black;
      chat2Text = Colors.white;
      chat3Back = Colors.white;
      chat3Text = Colors.black;
    } else if (selectedChat == 2) {
      chat1Back = Colors.white;
      chat1Text = Colors.black;
      chat2Back = Colors.white;
      chat2Text = Colors.black;
      chat3Back = Colors.black;
      chat3Text = Colors.white;
    }

    return Container(
      padding: const EdgeInsets.only(right: 10, left: 10),
      width: 350,
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      blurRadius: 4,
                      spreadRadius: 0
                  ),
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(0, 0),
                      blurRadius: 4,
                      spreadRadius: 0
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  width: 130,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedChat = 0;
                        });
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        backgroundColor: MaterialStateProperty.all<Color>(chat1Back),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                          )
                        )
                      ),
                      child: Text(
                        "Community chat",
                        style: TextStyle(
                          fontSize: 12,
                          color: chat1Text
                        ),
                      )
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedChat = 1;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(chat2Back),
                          elevation: MaterialStateProperty.all<double>(0),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              )
                          )
                      ),
                      child: Text(
                        "Trending",
                        style: TextStyle(
                            fontSize: 12,
                            color: chat2Text
                        ),
                      )
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedChat = 2;
                        });
                      },
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all<double>(0),
                          backgroundColor: MaterialStateProperty.all<Color>(chat3Back),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              )
                          )
                      ),
                      child: Text(
                        "Pinned",
                        style: TextStyle(
                            color: chat3Text,
                            fontSize: 12
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: chatFrames[selectedChat]
          )
        ],
      ),
    );
  }
}
