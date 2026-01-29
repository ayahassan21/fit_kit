import 'package:flutter/material.dart';


class items extends StatelessWidget {
  final String title;
  const items ({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: ListTile(
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
            onTap: () {},
            ),
        );
    }
}