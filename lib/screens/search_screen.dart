import 'package:flutter/material.dart';
import 'package:session_eigh/view%20functions/Functions.dart';

import '../data/data_list.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search...",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close),
                  )),
            ),SizedBox(height: 20),Functions.custom_stack_search_screen(urls: imageMovie,titles: titleMovie,descriptions: descriptionMovie)


          ],
        ),
      ),
    );
  }
}
