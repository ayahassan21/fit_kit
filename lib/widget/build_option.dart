import 'package:flutter/material.dart';


class BuildOption extends StatelessWidget {
  final String title;
  final bool isSelected;


  const BuildOption({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color:  Colors.grey.shade100,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade50),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? Colors.red : Colors.transparent,
                  border: Border.all(color: Colors.grey.shade400),
                ),
              ),
            ],
            ),
        );
    }
}


