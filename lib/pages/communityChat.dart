import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/chatBox.dart';

class CommunityChat extends StatefulWidget {
  const CommunityChat({Key? key}) : super(key: key);

  @override
  State<CommunityChat> createState() => _CommunityChatState();
}

class _CommunityChatState extends State<CommunityChat> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 265,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ChatBox(
                profileID: 1,
                userName: 'S Venkadesh',
                bio: '2nd year CSE',
                chatData: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                likeCount: 30,
                thumbsUpCount: 20,
                thumbsDownCount: 15,
              ),
              ChatBox(
                profileID: 1,
                userName: 'Subash',
                bio: '4th year CSE',
                chatData: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                likeCount: 40,
                thumbsUpCount: 24,
                thumbsDownCount: 19,
              ),
              ChatBox(
                profileID: 1,
                userName: 'Krishna',
                bio: '3rd year CSE',
                chatData: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                likeCount: 35,
                thumbsUpCount: 36,
                thumbsDownCount: 6,
              ),
            ],
          )
        ),
      ),
    );
  }
}