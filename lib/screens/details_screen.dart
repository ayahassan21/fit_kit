import 'package:fit_kit/widget/step_card.dart';
import 'package:flutter/material.dart';




class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://th.bing.com/th/id/OIP.0Zj45EijfJY4a0V3xuYsrAHaFj?w=210&h=180&c=7&r=0&o=7&pid=1.7&rm=3'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.black.withOpacity(0.3),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: IconButton(
                    icon: Icon(
                        Icons.arrow_back, color: Colors.white, size: 50),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white.withOpacity(0.8),
                      size: 80,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Week Mass - Building Trainer",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Serif',
                    ),
                  ),
                   SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade500,
                      height: 1.5,
                    ),
                  ),
                   SizedBox(height: 30),
                   Text(
                    "Workout Schedule",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: StepCard(
                          step: "STEP 1",
                          title: "Warm Up",
                          time: "15 Mins",
                          color:  Color(0xFFC62828),
                        ),
                      ),
                       SizedBox(width: 15),
                      Expanded(
                        child: StepCard(
                          step: "STEP 2",
                          title: "Basics Push",
                          time: "20 Mins",
                          color:  Color(0xFF212121),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:  Color(0xFFC62828),
        unselectedItemColor: Colors.grey,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: ""),
        ],
      ),
    );
  }}
