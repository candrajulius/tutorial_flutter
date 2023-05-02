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
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Text 1"),
                  const Text('Text 2'),
                  const Text('Text 3'),
                  const Text('Text 4'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("Text 1"),
                      Text("Text 2"),
                    ],
                  )
                ],
              ),
            )));
  }
  // Catatan
/*
  Column adalah sebuah container yang dimana widgetnya itu kebawah
  Row adalah sebuah container yang dimana widgetnya itu ke samping
  crossAxisAlignment adalah sebuah property yang dimana posisi widgetnya secara horizontal
  mainAxisAlignment adalah sebuah property yang dimana posisi widgetnya secara vertical
 */
}
