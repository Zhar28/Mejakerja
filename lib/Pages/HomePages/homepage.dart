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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.all(30),
           children: [
            ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => YukKenalan()));
        },
        child: Text('yuk kenalan')
        ),

        ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AsahKemampuan()));
        },
        child: Text('Asah kemampuan')
        ),

        ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => KembangkanPribadimu()));
        },
        child: Text('Kembangkan Pribadimu')
        ),

        ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Leaderboard()));
        },
        child: Text('Leaderboard')
        ),

        ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Profilepage()));
        },
        child: Text('intip Profilmu')
        ),

        ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RewardMarketplace()));
        },
        child: Text('Reward Marketplace')
        ),

        ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DailyCheckin()));
        },
        child: Text('Daily Checkin')
        ),
           ]
      ),
    );
  }
}
