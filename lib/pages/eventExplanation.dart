import 'package:flutter/material.dart';

class EventExplain extends StatefulWidget {
  EventExplain({Key? key, this.eventHeading, this.imageLink, this.eventDes, this.eventLink}) : super(key: key);

  final eventHeading;
  final imageLink;
  final eventDes;
  final eventLink;

  @override
  State<EventExplain> createState() => _EventExplainState();
}

class _EventExplainState extends State<EventExplain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EventHeading(eventHeading: widget.eventHeading,),
            EventImage(imageLink: widget.imageLink,),
            EventDes(eventDes: widget.eventDes,),
            EventLink(eventLink: widget.eventLink,)
          ],
        ),
      ),
    );
  }
}

class EventHeading extends StatefulWidget {
  const EventHeading({Key? key, this.eventHeading}) : super(key: key);

  final eventHeading;

  @override
  State<EventHeading> createState() => _EventHeadingState();
}

class _EventHeadingState extends State<EventHeading> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        widget.eventHeading,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}

class EventImage extends StatefulWidget {
  const EventImage({Key? key, this.imageLink}) : super(key: key);

  final imageLink;

  @override
  State<EventImage> createState() => _EventImageState();
}

class _EventImageState extends State<EventImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: 200,
      height: 200,
      child: Image(
        image: NetworkImage(widget.imageLink),
      ),
    );
  }
}

class EventDes extends StatefulWidget {
  const EventDes({Key? key, this.eventDes}) : super(key: key);

  final eventDes;

  @override
  State<EventDes> createState() => _EventDesState();
}

class _EventDesState extends State<EventDes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        widget.eventDes,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300
        ),
      ),
    );
  }
}

class EventLink extends StatefulWidget {
  const EventLink({Key? key, this.eventLink}) : super(key: key);

  final eventLink;

  @override
  State<EventLink> createState() => _EventLinkState();
}

class _EventLinkState extends State<EventLink> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Link: "+widget.eventLink,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black
          ),
        ),
      ),
    );
  }
}
