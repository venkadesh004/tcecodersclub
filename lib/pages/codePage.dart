import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/eventExplanation.dart';
import 'package:tcecodersclub/pages/userMenu.dart';

Route _createRoute(String eventName, String eventImage, String eventDes, String eventLink) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => EventExplain(
      eventHeading: eventName,
      imageLink: eventImage,
      eventDes: eventDes,
      eventLink: eventLink,
    ),
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

class CodePage extends StatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  State<CodePage> createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(left: 20),
        color: const Color.fromRGBO(217, 217, 217, 0.8),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                UserMenu(),
                EventBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EventBox extends StatefulWidget {
  const EventBox({Key? key}) : super(key: key);

  @override
  State<EventBox> createState() => _EventBoxState();
}

class _EventBoxState extends State<EventBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          EventMiniBox(eventName: 'January Monthly Contest', eventDes: 'Lets join the January Monthly Contest of Coders Club', eventImage: '',),
          EventMiniBox(eventName: 'Web development Contest', eventDes: 'CSE Coders club is now conducting a mega event in web technologies.', eventImage: 'https://cdn2.iconfinder.com/data/icons/font-awesome/1792/code-512.png',),
          EventMiniBox(eventName: 'February Monthly Contest', eventDes: 'Lets join the January Monthly Contest of Coders Club', eventImage: '',),
        ]
      ),
    );
  }
}

class EventMiniBox extends StatefulWidget {
  EventMiniBox({Key? key,
    this.eventName,
    this.eventDes,
    this.eventImage
  }) : super(key: key);

  var eventName;
  var eventDes;
  var eventImage;

  @override
  State<EventMiniBox> createState() => _EventMiniBoxState();
}

class _EventMiniBoxState extends State<EventMiniBox> {
  @override
  Widget build(BuildContext context) {
    if (widget.eventImage == '') {
      widget.eventImage = 'https://repository-images.githubusercontent.com/253395053/f2f38a80-8182-11ea-8059-91f14f9a3274';
    }
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(220, 220, 220, 1),
                blurRadius: 50
            )
          ]
      ),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 20, top: 20),
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
      height: 165,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              widget.eventName,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 200,
                height: 100,
                margin: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.eventDes,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(_createRoute(
                              widget.eventName,
                              widget.eventImage,
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                              'venkadesh004.github.io'
                          ));
                        },
                        child: const Text("Read More")
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Image(
                    image: NetworkImage(widget.eventImage)
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
