import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KembangkanPribadimu extends StatefulWidget {
  const KembangkanPribadimu({super.key});

  @override
  State<KembangkanPribadimu> createState() => _KembangkanPribadimuState();
}

class _KembangkanPribadimuState extends State<KembangkanPribadimu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kembangkan Pribadimu'),
      ),
    );
  }
}
