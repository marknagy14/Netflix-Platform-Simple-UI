import 'package:flutter/material.dart';
import 'package:session_eigh/data/data_list.dart';
import 'package:session_eigh/view%20functions/Functions.dart';

import 'detail screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Functions.row_of_texts("Trending","See all"),
          Functions.swipe_screen(Axis.horizontal,imageMovie,titleMovie,descriptionMovie),
          Functions.row_of_texts("New Movies","See all"),
          Functions.swipe_screen(Axis.horizontal,imageMovieReversed,titleMovieReversed,descriptioneMovieReversed),
        ],
      ),
    );
  }


}
