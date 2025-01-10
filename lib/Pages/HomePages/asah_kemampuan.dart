import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AsahKemampuan extends StatefulWidget {
  const AsahKemampuan({super.key});

  @override
  State<AsahKemampuan> createState() => _AsahKemampuanState();
}

class _AsahKemampuanState extends State<AsahKemampuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asah Kemampuan'),
      ),
    );
  }
}
