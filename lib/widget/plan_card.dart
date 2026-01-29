import 'package:flutter/material.dart';


class PlanCard extends StatelessWidget {
  final String title;

  const PlanCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.fitness_center, color: Color(0xFFC62828), size: 40),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 5),
              const Text(
                'Walking is simple, yet powerful exercise for your body',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
            ),
        );
    }
}
