import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/botton.dart';
import '../widgets/search.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff05001e),
      body: Container(
        padding: const EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            MySearchField(),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Results for \" comedy\"",
                      style: TextStyle(
                          color: Color.fromARGB(183, 230, 229, 229),
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 40,
                      runSpacing: 30,
                      children: [
                        for (int i = 1; i < 21; i++) GetPhotos(i: i),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: MyBottomNavigation(),
    );
  }
}

class GetPhotos extends StatelessWidget {
  int i;
  GetPhotos({required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 105,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/img$i.jpg"),
        ),
      ),
    );
  }
}