import 'package:flutter/material.dart';

class TrendingChat extends StatefulWidget {
  const TrendingChat({Key? key}) : super(key: key);

  @override
  State<TrendingChat> createState() => _TrendingChatState();
}

class _TrendingChatState extends State<TrendingChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        "This is trending chat"
      ),
    );
  }
}
