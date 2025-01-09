import 'package:flutter/material.dart';
import 'package:mejakerja/Pages/ProfilePages/settingpage.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settingpage(),
                  ));
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
