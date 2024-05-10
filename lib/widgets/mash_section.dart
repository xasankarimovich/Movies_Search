import 'package:flutter/material.dart';

import '../model/popular_models.dart';

class MyPopularSection extends StatefulWidget {
  const MyPopularSection({super.key});

  @override
  State<MyPopularSection> createState() => _MyPopularSectionState();
}

class _MyPopularSectionState extends State<MyPopularSection> {
  List<PopularMovies> moviesList = [];

  void _getInitialInfo() {
    moviesList = PopularMovies.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return SizedBox(
      height: 180,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: moviesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              moviesList[index].image,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}