import 'package:flutter/material.dart';

class BlockedUserPage extends StatelessWidget {
  const BlockedUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blocked User Page'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    'Mees Hilgers',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '081217568044',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'hilgersmees@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    'lorem ipsum',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '081217568044',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'tes@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Text(
                    'test2',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '081217568044',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'test2@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
