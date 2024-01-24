import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: const [
            Text("Settings"),
            Icon(
              Icons.settings,
            )
          ],
          centerTitle: true,
          title: const Text("Settings page"),
          leading: const Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.white,
          ),
          backgroundColor: Colors.red,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children:[
              MyLitleContainer(
                text: "Very low",
              ),
               MyLitleContainer(
                text: "Low",
              ), 
              MyLitleContainer(
                text: "Medium",
                isSelected: true,
              ),
               MyLitleContainer(
                text: "High",
              ), 
              
            // children: [
            //   Myconteiner(),
            //   // SizedBox(
            //   //   // height: 15, //расстояния
            //   // ),
            //   Spacer(), // отталкивает
            //   Myconteiner(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLitleContainer extends StatelessWidget {
  const MyLitleContainer({
    super.key,
    required this.text,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.green : Colors.red,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            30,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 12,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class Myconteiner extends StatelessWidget {
  const Myconteiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.pink,
              spreadRadius: 10,
              blurRadius: 18,
              offset: Offset(
                -10,
                10,
              ),
            ),
          ],
          shape: BoxShape.rectangle,
          color: Colors.purple,
          border: Border.all(
            width: 10,
            color: Colors.black,
          )
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(
          //     40,
          //     ),
          //     bottomRight: Radius.circular(
          //       60,
          //     ),
          // ),
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(
          //     25,
          //   ),
          // ),
          ),
      child: Padding(
        padding: const EdgeInsets.all(
          16,
        ),
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
