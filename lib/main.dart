import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String nameApplication = "Aplikasi hello world";
  String excerciseDart = "Saya sedang melatih kemampuan dart saya";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(nameApplication.toUpperCase()),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              color: Colors.lightBlue,
              width: 200,
              height: 50,
              child: Text(
                excerciseDart,
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ));
  }
}
