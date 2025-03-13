import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.sizeOf(context).width;
    final double deviceHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF8AFFE8),
              Colors.white,
              Colors.white,
              Color(0xFF8AFFE8),
            ],
            stops: [0, 0.21, 0.76, 1.00],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        
      ),
    );
  }
}