import 'package:flutter/material.dart';
import 'package:mejakerja/Pages/HomePages/asah_kemampuan.dart';
import 'package:mejakerja/Pages/HomePages/daily_checkin.dart';
import 'package:mejakerja/Pages/HomePages/kembangkan_pribadimu.dart';
import 'package:mejakerja/Pages/HomePages/leaderboard.dart';
import 'package:mejakerja/Pages/HomePages/reward_marketplace.dart';
import 'package:mejakerja/Pages/HomePages/yuk_kenalan.dart';
import 'package:mejakerja/Pages/ProfilePages/profilepage.dart';
import 'package:mejakerja/Pages/comment_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, String>> posts = [
    {
      'title': 'Flutter 3.0 Released!',
      'content': 'Explore the new features in Flutter 3.0 and how it can improve your apps.'
    },
    {
      'title': 'Dart Null Safety',
      'content': 'Learn how to implement null safety in your Dart projects effectively.'
    },
    {
      'title': 'State Management in Flutter',
      'content': 'A comprehensive guide to managing state in your Flutter applications.'
    },
    {
      'title': 'UI Design Tips',
      'content': 'Enhance your app\'s user experience with these UI design tips.'
    },
    {
      'title': 'Performance Optimization',
      'content': 'Techniques to optimize the performance of your Flutter applications.'
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
            const SizedBox(height: 20),
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
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CommentPage(
                            title: title,
                            content: content,
                          ),
                        ),
                      );
                    },
                    child: Card(
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
                            const SizedBox(height: 8.0),
                            Text(
                              content,
                              style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                            ),
                          ],
                        ),
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

