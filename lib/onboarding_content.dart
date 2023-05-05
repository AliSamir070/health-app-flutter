import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  String imagePath;
  String text;
  OnboardingContent({required this.imagePath , required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
            imagePath,
          width: double.infinity,
          height: 350,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.grey[700],
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
