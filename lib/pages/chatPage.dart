import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/userMenu.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 20),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                UserMenu(),
                ChatContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatContainer extends StatefulWidget {
  const ChatContainer({Key? key}) : super(key: key);

  @override
  State<ChatContainer> createState() => _ChatContainerState();
}

class _ChatContainerState extends State<ChatContainer> {

  TextEditingController _chatMessage = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 20,
            scrollPhysics: const ScrollPhysics(),
            decoration: const InputDecoration(
              hintText: 'Enter what is in your mind...',
              border: OutlineInputBorder(),
            ),
            controller: _chatMessage,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 220,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _chatMessage.text = "";
                        });
                      },
                      child: const Text(
                        "Clear",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17
                        )
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        if (_chatMessage.text != "") {
                          final snackbar = SnackBar(
                            content: const Text("Updated Your Message!"),
                            action: SnackBarAction(
                              label: 'Close',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        } else {
                          final snackbar = SnackBar(
                            content: const Text("Empty Message!"),
                            action: SnackBarAction(
                              label: 'Close',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                      },
                      child: const Text(
                          "Send",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 17
                          )
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
