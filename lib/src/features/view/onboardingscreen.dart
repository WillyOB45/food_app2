import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/food_logo.png",
            height: 500,
            width: 900,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                "The fastest food",
                style: GoogleFonts.spaceMono(color: Colors.black),
              )
            ],
          )
        ],
      ),
    );
  }
}
