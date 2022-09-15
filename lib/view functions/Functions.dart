import 'package:flutter/material.dart';

import '../screens/detail screen.dart';

class Functions {


  static Widget swipe_screen(var axis, List urls, List titles, descriptions) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
          scrollDirection: axis,
          itemCount: urls.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          description: descriptions[index],
                          title: titles[index],
                          imageUrl: urls[index],
                        )));
              },
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // elevation control darkness (Zell)
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        urls[index],
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          "${titles[index]}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ))
                  ],
                ),
              ),
            );
          }),
    );
  }

  static Widget row_of_texts(String s1, String s2) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            s1,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                s2,
                style: TextStyle(fontSize: 15),
              ))
        ],
      ),
    );
  }

  static Widget custom_stack_search_screen({urls, descriptions, titles}) {
    return SingleChildScrollView(
      child: Container(
        height: 550,
        width: double.infinity,
        child: ListView.builder(
            itemCount: urls.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailScreen(
                            description: descriptions[index],
                            title: titles[index],
                            imageUrl: urls[index],
                          )));
                },
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // elevation control darkness (Zell)
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          child: Image.network(
                            urls[index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            "${titles[index]}",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w500),
                          ))
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
