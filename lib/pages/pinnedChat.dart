import 'package:flutter/material.dart';

class PinnedChat extends StatefulWidget {
  const PinnedChat({Key? key}) : super(key: key);

  @override
  State<PinnedChat> createState() => _PinnedChatState();
}

class _PinnedChatState extends State<PinnedChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "This is pinned chat"
      ),
    );
  }
}
