import 'package:flutter/material.dart';

class SplashScreeenUi extends StatefulWidget {
  const SplashScreeenUi({super.key});

  @override
  State<SplashScreeenUi> createState() => _SplashScreeenUiState();
}

class _SplashScreeenUiState extends State<SplashScreeenUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 130,
              width: 130,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Body health calculator',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              '2026 All rights reserved',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
            Text(
              'Created by: Donpisit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
             SizedBox(height: 40),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
