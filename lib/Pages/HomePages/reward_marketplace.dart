import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RewardMarketplace extends StatefulWidget {
  const RewardMarketplace({super.key});

  @override
  State<RewardMarketplace> createState() => _RewardMarketplaceState();
}

class _RewardMarketplaceState extends State<RewardMarketplace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reward Marketplace'),
      ),
    );
  }
}
