import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "Anonymous Method";
  String message = "Ini adalah sebuah text";
  void clickButton(){
    setState(() {
      message = "tombol telah ditekan oleh anda";
    });
  }

  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title.toUpperCase()),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                  Text(message),
                  ElevatedButton(onPressed: clickButton,
                      child: const Text('Tekan saya'))
                ],
              ),
            ),
          )
      );
}
// Kesimpulan

