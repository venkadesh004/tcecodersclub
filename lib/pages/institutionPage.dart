import 'package:flutter/material.dart';
import 'package:tcecodersclub/pages/userMenu.dart';

class InstitutionPage extends StatefulWidget {
  const InstitutionPage({Key? key}) : super(key: key);

  @override
  State<InstitutionPage> createState() => _InstitutionPageState();
}

class _InstitutionPageState extends State<InstitutionPage> {
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
                AboutTCEAndClub()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AboutTCEAndClub extends StatelessWidget {
  const AboutTCEAndClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AboutTCE(),
          AboutDept()
        ],
      ),
    );
  }
}

class AboutTCE extends StatelessWidget {
  const AboutTCE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            "About TCE",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 5),
          child: const Center(
            child: Image(
                image: AssetImage('assets/images/logoTCE.png')
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 5, right: 20),
          child: const Text(
              "\t\t\t\tSpread across 143 acres, The institution and hostels are located near Thirupparankundram on the outskirts of Madurai, 8 kilometres south-west of the city of Madurai. With the motto of 'வினையே உயிர்' (Duty is Life), TCE aims at creating quality professionals to meet the emerging industrial and social needs through innovative teaching, applied research and industrial interaction.",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "More Details",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500
              ),
            )
        )
      ],
    );
  }
}

class AboutDept extends StatelessWidget {
  const AboutDept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: const Text(
            "About The Department",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 30),
          child: const Text(
            "\t\t\t\tThe FIST Supported Computer Science and Engineering Department has Knowledge Engineering as its theme area. The Department has laboratories supported by Microsoft, Intel, TCS and HP. The Department has the privilege of having completed many R&D projects from RCI, AICTE, UGC, DIT and DST. The Department was a consortium partner of CDBR-Smart and Secure Environment project sponsored by NTRO, New Delhi. The Department has an active collaboration with EMC Data Storage Systems, Yahoo India, Adobe, Intel and CTS. As a Prometric Center, six international certification programs are offered. The Department is responsible for Design and Development of College Management Information System which has received much National level recognition. Journals.",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }
}
