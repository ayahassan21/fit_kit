import 'package:flutter/material.dart';


class WorkCard extends StatelessWidget {
  final String title;

  final String image;

  const WorkCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 140,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          image:  DecorationImage(
            image: NetworkImage(image),

            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken),
          ),
        ),
        child: Stack(
            children: [
              Positioned(
                top: 10, right: 10,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: const Color(0xFFC62828).withOpacity(0.8),
                  child: const Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
              Positioned(
                bottom: 15, left: 15,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
            ),
        );
    }}

