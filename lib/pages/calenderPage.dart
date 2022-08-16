import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/userMenu.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
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
                CalenderContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CalenderContainer extends StatefulWidget {
  const CalenderContainer({Key? key}) : super(key: key);

  @override
  State<CalenderContainer> createState() => _CalenderContainerState();
}

class _CalenderContainerState extends State<CalenderContainer> {

  var dates = List<String>.generate(31, (index) => '$index');
  var month = 'Jan';
  var events = [[], [], ['January Monthly Contest'], [], [], [], [], [], [], ['Web development Contest'], [], [], [], [], [], [], [], [], [], [], [], [], [], [], ['Web seminar'], [], [], [], [], []];
  var eventExistence = [false, false, true, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    dates.removeAt(0);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(right: 10, bottom: 200),
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: dates.length,
          itemBuilder: (context, index) {
            return DateBox(month: month, date: dates[index], eventExist: eventExistence[index], eventList: events[index],);
          }
      )
    );
  }
}

class DateBox extends StatefulWidget {
  DateBox({Key? key,
    this.month,
    this.date,
    this.eventList,
    this.eventExist
  }) : super(key: key);

  final month;
  final date;
  final eventList;
  final eventExist;

  @override
  State<DateBox> createState() => _DateBoxState();
}

class _DateBoxState extends State<DateBox> {
  @override
  Widget build(BuildContext context) {
    if (!widget.eventExist) {
      return Container(
        margin: const EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width - 20,
        height: 120,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 100,
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                            color: Color.fromRGBO(78, 78, 78, 1),
                          ),
                          width: 90,
                          height: 40,
                          child: Center(
                            child: Text(
                              widget.month,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 60,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                            color: Color.fromRGBO(246, 246, 246, 1),
                          ),
                          child: Center(
                            child: Text(
                              widget.date,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: const [
                          Text(
                            "No events",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[200],
            )
          ],
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width - 20,
      height: 120,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Container(
                  width: 90,
                  height: 100,
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                          color: Color.fromRGBO(78, 78, 78, 1),
                        ),
                        width: 90,
                        height: 40,
                        child: Center(
                          child: Text(
                            widget.month,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                          color: Color.fromRGBO(246, 246, 246, 1),
                        ),
                        child: Center(
                          child: Text(
                            widget.date,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 50),
                    child: Expanded(
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width - 170,
                        child: Center(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: widget.eventList.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(
                                    widget.eventList[index],
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400
                                    ),
                                  ),
                                );
                              }
                          ),
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[200],
          )
        ],
      ),
    );
  }
}
