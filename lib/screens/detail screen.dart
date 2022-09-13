import 'package:flutter/material.dart';
import 'package:session_eigh/data/data_list.dart';

class DetailScreen extends StatelessWidget {
  String imageUrl;
  String title;
  String description;


  DetailScreen({ required this.imageUrl, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Screen"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
          children: [
            Container(height: 300,width:500,
              child: Image.network(
                this.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "Title: ${this.title}",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Center(
                child: Text(
              "Description",
              style: TextStyle(color: Colors.white,fontSize: 20),
            )),
            SizedBox(height: 10),
            Text(
              "${this.description}",
              style: TextStyle(color: Colors.white,fontSize: 15),
            )
          ],
        ));


  }
}
