import 'package:dice_roll_app/column_center.dart';
import 'package:flutter/material.dart';

class ScaffoldContainer extends StatelessWidget{
  const ScaffoldContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blueAccent, Colors.tealAccent],
          ),
        ),
        child: const ColumnCenter()
      ),
    );
  }



}