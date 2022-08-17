import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tcecodersclub/constants.dart';
import 'dart:math';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    Random rand = new Random();
    int randomIndex = rand.nextInt(9);
    return Container(
      padding: const EdgeInsets.only(bottom: 50, top: 100),
      child: Column(
        children: [
          const SpinKitWave(color: Colors.grey, type: SpinKitWaveType.start,),
          Container(
            width: 260,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 115,
                  height: 1,
                  color: Colors.grey,
                ),
                Container(
                  width: 10,
                  height: 2,
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 115,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              quotes[randomIndex],
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey
              ),
            ),
          )
        ],
      ),
    );
  }
}