import 'package:flutter/material.dart';
import '../widget/plan_card.dart';
import '../widget/work_card.dart';
import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          leading:  Icon(Icons.menu, color: Colors.white),
          title:  Text(
            'Home',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions:  [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
          ],
        ),

        body: SingleChildScrollView(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

               Text(
                'Workout Exercises',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 15),

              SizedBox(
                height: 180,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                    WorkCard(
                      title: 'Abs\nPerfection',
                      image: "https://img.freepik.com/premium-photo/barbell-fitness-training-gym_250469-12439.jpg",
                    ),
                    WorkCard(
                      title: 'Good\nCardio',
                      image: "https://tse3.mm.bing.net/th/id/OIP.o0vq2kOIxPfvaQqYJYrIagHaE7?rs=1&pid=ImgDetMain",
                    ),
                    WorkCard(
                      title: 'Arms\nStretching',
                      image: "https://tse1.mm.bing.net/th/id/OIP.EwbatycHx_915hcNzd7vRgHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
                    ),
                    ],
                    ),
              ),

              SizedBox(height: 30),

               Text(
                'Training Plan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
               SizedBox(height: 15),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.85,
                children: const [
                  PlanCard(title: 'Shoulder Press'),
                  PlanCard(title: 'Jogging'),
                  PlanCard(title: 'Shoulder Press'),
                  PlanCard(title: 'Jogging'),
                ],
              ),
            ],
          ),
        ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFC62828),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  NotificationScreen()),
            );
          }
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label:''),
        ],
      ),
        );
    }
}

