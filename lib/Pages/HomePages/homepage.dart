import 'package:flutter/material.dart';
import 'package:mejakerja/Pages/HomePages/asah_kemampuan.dart';
import 'package:mejakerja/Pages/HomePages/daily_checkin.dart';
import 'package:mejakerja/Pages/HomePages/kembangkan_pribadimu.dart';
import 'package:mejakerja/Pages/HomePages/leaderboard.dart';
import 'package:mejakerja/Pages/HomePages/reward_marketplace.dart';
import 'package:mejakerja/Pages/HomePages/yuk_kenalan.dart';
import 'package:mejakerja/Pages/ProfilePages/profilepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}  

class _HomepageState extends State<Homepage> {
  final List<Map<String, String>> posts = [
    {
      'title': 'test 1',
      'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'title': 'test 2',
      'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'title': 'test 3',
      'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'title': 'test 4',
      'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
    {
      'title': 'test 5',
      'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildButton(
                    context,
                    'Yuk Kenalan',
                    YukKenalan(),
                  ),
                  _buildButton(
                    context,
                    'Asah Kemampuan',
                    AsahKemampuan(),
                  ),
                  _buildButton(
                    context,
                    'Kembangkan Pribadimu',
                    KembangkanPribadimu(),
                  ),
                  _buildButton(
                    context,
                    'Leaderboard',
                    Leaderboard(),
                  ),
                  _buildButton(
                    context,
                    'Intip Profilmu',
                    Profilepage(),
                  ),
                  _buildButton(
                    context,
                    'Reward Marketplace',
                    RewardMarketplace(),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DailyCheckin()));
              },
              child: const Text('Daily Checkin'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final title = posts[index]['title'] ?? 'No Title';
                  final content = posts[index]['content'] ?? 'No Content';
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            content,
                            style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, Widget page) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(100, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Text(label),
    );
  }
}
