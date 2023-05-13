import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String nameApplication = "Latihan Container";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text(nameApplication.toUpperCase()),
              centerTitle: true,
            ),
            body: Container(
              color: Colors.red,margin: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
                padding: const EdgeInsets.only(bottom: 20,top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                   Colors.amber,
                   Colors.blue,
                ])),
                // color: Colors.lightBlue,
                // margin: const EdgeInsets.all(10),
              ),
            )
        )
    );
  }
  // Catatan
/*
  Column adalah sebuah container yang dimana widgetnya itu kebawah
  Row adalah sebuah container yang dimana widgetnya itu ke samping
  crossAxisAlignment adalah sebuah property yang dimana posisi widgetnya secara horizontal
  mainAxisAlignment adalah sebuah property yang dimana posisi widgetnya secara vertical
 */
}
