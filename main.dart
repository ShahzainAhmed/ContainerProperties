// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Properties"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                // alignment: Alignment.topLeft,
                transform:
                    Matrix4.rotationZ(.1), // for the rotation of container
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  // borderRadius: const BorderRadius.only(
                  //   topRight: Radius.circular(100),
                  //   bottomLeft: Radius.circular(100),
                  // ),

                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.yellow, width: 1),
                  boxShadow: const [
                    BoxShadow(color: Colors.yellow, blurRadius: 50),
                  ],
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "iPhone X",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
