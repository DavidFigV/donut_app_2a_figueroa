import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        padding: const EdgeInsets.all(6.0),
        //Bordes redondeados
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200]
        ),
        child: Image.asset(iconPath, color: Colors.grey[600]),
      ),
    );
  }
}
