import 'package:flutter/cupertino.dart';

class DailyCheckin extends StatefulWidget {
  const DailyCheckin({super.key});

  @override
  State<DailyCheckin> createState() => _DailyCheckinState();
}

class _DailyCheckinState extends State<DailyCheckin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Daily Checkin'),
    );
  }
}