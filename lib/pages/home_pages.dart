import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/botton.dart';
import '../widgets/mash_section.dart';
import '../widgets/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MySearchField(),
              MyTitles(title: "Resent Searches"),
              Wrap(
                children: [
                  MyChipSection(title: "Marvel"),
                  const SizedBox(width: 20.0),
                  MyChipSection(title: "Capitan america"),
                  const SizedBox(width: 20.0),
                  MyChipSection(title: "Capitan Marvel"),
                  const SizedBox(width: 20.0),
                  MyChipSection(title: "Thor"),
                ],
              ),
              MyTitles(title: "Popular"),
              const MyPopularSection(),
              MyTitles(title: "Recommendations for you"),
              const MyPopularSection(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: MyBottomNavigation(),
    );
  }
}

class MyTitles extends StatelessWidget {
  MyTitles({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class MyChipSection extends StatelessWidget {
  MyChipSection({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      avatar: const Icon(CupertinoIcons.clock),
      label: Text(title),
      side: BorderSide.none,
      labelStyle: const TextStyle(color: Color(0xff5a4bed)),
      backgroundColor: const Color(0xff5a4bed).withOpacity(0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}