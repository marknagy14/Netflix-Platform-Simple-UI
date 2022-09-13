import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List title = [
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
    "mohamed",
    "ahmed",
    "mohamed",
    "ali",
  ];
  double height = 200;
  double width = 200;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Screen'),
        centerTitle: true,
      ),

      body: Center(
        child:ListView.builder(itemCount: 20,itemBuilder: (context,index){
          return Text("item $index ");
        })

      ),

    );

  }

  Widget container_item(
      {double w = 100, double h = 100, Color c = Colors.white}) {
    return (Container(
      width: w,
      height: h,
      color: c,
    ));
  }
}
