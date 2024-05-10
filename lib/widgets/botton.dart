import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/home_pages.dart';
import '../pages/pages_yuk.dart';
import '../pages/second_pages.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(26),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            height: 60,
            color: Colors.transparent.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Home',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.search,
                    color: Color(0xff5a4bed),
                    size: 28,
                  ),
                  tooltip: 'Search',
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    CupertinoIcons.bookmark,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Bookmark',
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DownloadPage(),
                      ),
                    );
                  },
                  icon: const Icon(
                    CupertinoIcons.arrow_down_to_line_alt,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Download',
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.person,
                    color: Colors.grey,
                    size: 28,
                  ),
                  tooltip: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}