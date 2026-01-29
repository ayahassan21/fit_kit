import 'package:fit_kit/widget/items.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
      flex: 3,
      child: Drawer(
        backgroundColor:  Color(0xFFC62828),
        child: Column(
          children: [
             SizedBox(height: 60),
             CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Text('UN',
                style: TextStyle(fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
             SizedBox(height: 15),
             Text('User Name',
              style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 20),
             Divider(color: Colors.white38, indent: 30, endIndent: 30),
             SizedBox(height: 20),

            items(title: 'Home'),
            items(title: 'About'),
            items(title: 'Exercises'),
            items(title: 'Prices'),
            items(title: 'Contact'),
            items(title: 'More'),

             Spacer(),
            TextButton(
              onPressed: () {},
              child:  Text('Logout',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
             SizedBox(height: 30),
          ],
        ),
      ),
    ),

    Expanded(
    child: GestureDetector(
    onTap: () => Navigator.pop(context),
    child: Container(
    color: Colors.black,
    alignment: Alignment.topCenter,
    padding: const EdgeInsets.only(top: 50),
    child: IconButton(
    icon: const Icon(Icons.cancel_outlined, color: Colors.white, size: 38),
    onPressed: () => Navigator.pop(context),
       ),
      ),
     ),
    ),
    ],);
  }
}
