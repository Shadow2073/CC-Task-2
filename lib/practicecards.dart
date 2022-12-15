import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        elevation: 7,
        color: Colors.grey[900],
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child:
            Text(text, style: TextStyle(fontSize: 20, letterSpacing: 1.0, color: Colors.white), textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
