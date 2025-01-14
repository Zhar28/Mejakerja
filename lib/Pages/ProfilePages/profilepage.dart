import 'package:flutter/material.dart';
import 'package:mejakerja/Pages/ProfilePages/settingpage.dart';

import 'package:mejakerja/Pages/change_password.dart';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 380,
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(16), // Rounded corners
                        border: Border.all(color: Colors.white, width: 4),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage('assets/icons.png'),
                          ),
                          const SizedBox(height: 16),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Nabil Fadly Azhar Aziz',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text('Apprentice'),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      '2',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Berbagi pengetahuan',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      '3',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Materi Terselesaikan',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black),
                                      textAlign: TextAlign.center,
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      '0h 0m',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Durasi Belajar',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 12),
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      '2',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Berbagi pengetahuan',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      '3',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'Materi Terselesaikan',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangePasswordPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Lencana Anda',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangePasswordPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Incomplete Course',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangePasswordPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Completed Course',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
