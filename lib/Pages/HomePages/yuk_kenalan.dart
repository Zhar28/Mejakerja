import 'package:flutter/material.dart';

class YukKenalan extends StatefulWidget {
  const YukKenalan({super.key});

  @override
  State<YukKenalan> createState() => _YukKenalanState();
}

class _YukKenalanState extends State<YukKenalan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      )
    );
  }
}
