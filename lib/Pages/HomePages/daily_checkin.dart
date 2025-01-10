import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyCheckin extends StatefulWidget {
  const DailyCheckin({super.key});

  @override
  State<DailyCheckin> createState() => _DailyCheckinState();
}

class _DailyCheckinState extends State<DailyCheckin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('daily checkin'),
      ),
    );
  }
}
