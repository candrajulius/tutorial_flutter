import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  void addData() {
    setState(() {
      widgets.add(Text("Data ke " + counter.toString(),style: TextStyle(fontSize: counter.toDouble()),));
      counter++;
    });
  }

  void removeData() {
    setState(() {
      widgets.removeLast();
      counter--;
    });
  }

  String title = "Latihan List dan ListView";
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: ListView(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: addData,
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text(
                      "Tambah Data",
                    ),
                  ),
                  ElevatedButton(
                    onPressed: removeData,
                    child: const Text("Hapus Data"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                ),
              )
            ],
          )));
}
// Kesimpulan
/*
  ListView merupakan sebuah list yang menampung widget.
  Dalam listview anda bisa menscroll widget tersebut
  List diguanakan untuk menampung banyaknya widget
 */
