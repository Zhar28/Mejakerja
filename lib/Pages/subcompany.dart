import 'package:flutter/material.dart';
import 'package:mejakerja/Pages/loginpage.dart';

class SubcompanyPages extends StatefulWidget {
  const SubcompanyPages({super.key});

  @override
  State<SubcompanyPages> createState() => _SubcompanyPagesState();
}

class _SubcompanyPagesState extends State<SubcompanyPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image at the top
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: 100,
                  width: 100,
                ),
              ),

              buildGestureDetector(context, 'Snapdragon Official'),
              const SizedBox(height: 16),
              buildGestureDetector(context, 'Learning Platform Development'),
              const SizedBox(height: 16),
              buildGestureDetector(context, 'Mejakerja (Active Demo)'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGestureDetector(BuildContext context, String companyName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.business, color: Colors.blue),
            const SizedBox(width: 8),
            Text(
              companyName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
