import 'package:flutter/material.dart';
import 'package:tcecodersclub/main.dart';

class OTPValidation extends StatefulWidget {
  const OTPValidation({Key? key}) : super(key: key);

  @override
  State<OTPValidation> createState() => _OTPValidationState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const MainPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
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

class _OTPValidationState extends State<OTPValidation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                Navigator.pop(context);
              },
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend OTP",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                    ),
                  )
              )
            ],
          ),
          body: const OTPGetter(),
        )
    );
  }
}

class OTPGetter extends StatefulWidget {
  const OTPGetter({Key? key}) : super(key: key);

  @override
  State<OTPGetter> createState() => _OTPGetterState();
}

class _OTPGetterState extends State<OTPGetter> {

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "We have sent OTP to the following mail",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      "venkadeshdeveloper@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OtpInput(_fieldOne, true),
                        OtpInput(_fieldTwo, true),
                        OtpInput(_fieldThree, true),
                        OtpInput(_fieldFour, true),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black)
              ),
                onPressed: () {
                  if (_fieldOne.text == '2' && _fieldTwo.text == '0' && _fieldThree.text == '0' && _fieldFour.text == '4') {
                    Navigator.of(context).push(_createRoute());
                  }
                },
                child: const Text(
                  "Submit OTP",
                  style: TextStyle(
                    color: Colors.white
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

var count = 3;

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1 && count > 0) {
            count -= 1;
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}