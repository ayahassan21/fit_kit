import 'package:fit_kit/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fit_kit/screens/intended_purpose.dart';

import '../widget/build_option.dart';


class IntendedPurpose extends StatefulWidget {
  const IntendedPurpose({super.key});

  @override
  State<IntendedPurpose> createState() => _IntendedPurposeState();
}

class _IntendedPurposeState extends State<IntendedPurpose> {
String select="Weight loss";

@override
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'F i t',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, letterSpacing: 2),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black, width: 2)),
                      ),
                      child: const Text(
                        'K i t',
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFFC62828)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 60),
                const Text(
                  'Let us know how we \n'
                      'can help you',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, fontFamily: 'Serif'),
                ),
                 SizedBox(height: 60),

                GestureDetector(
                  onTap: () => setState(() => select = "Weight Loss"),
                  child: BuildOption(
                    title: "Weight Loss",
                    isSelected: select == "Weight Loss",
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => select = "Better Sleeping Habit"),
                  child: BuildOption(
                    title: "Better Sleeping Habit",
                    isSelected: select == "Better Sleeping Habit",
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => select = "Track My Nutrition"),
                  child: BuildOption(
                    title: "Track My Nutrition",
                    isSelected: select == "Track My Nutrition",
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() => select = "Improvr Overall Fitness"),
                  child: BuildOption(
                    title: "Improvr Overall Fitness",
                    isSelected: select == "Improvr Overall Fitness",
                  ),
                ),

                 Spacer(),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child:  ElevatedButton(
                    onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  HomeScreen(),
            ),
          );
      },
          style: ElevatedButton.styleFrom(
            backgroundColor:  Color(0xFFC62828),
            shape:  RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          child:  Text(
              'GET STARTED',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ),
  ),
                 SizedBox(height: 40),
              ],
            ),
          ),
          ),
      );
  }
}
