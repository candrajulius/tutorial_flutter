import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = "Latihan TextStyle";
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const <Widget>[
                  Text('Ini adalah text',style: TextStyle(
                      fontFamily: "Prompt",
                      fontSize: 30,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue, decorationThickness: 10,
                  decorationStyle: TextDecorationStyle.dotted),
                  ),
                  ElevatedButton(onPressed: null,
                      child: Text('Tekan saya'))
                ],
              ),
            ),
          )
      );
}
// Kesimpulan
/*
 Decoration digunakan untuk membuat dekorasi pada TextStyle
 DecorationColor digunakan untuk memberikan warna pada dekorasi teks
 DecorationStyle digunakan memberikan dekorasi style pada teks
        => lineThrough = berada ditengah teks
        => overline = berada di atas teks
        => underline = berada di bawah teks
        => decorationThickness = Memberikan ketebalan decoration
        => dashed = untuk membuat style style putus-putus
        => wavy = untuk membuat style style bergelombang
        => dotted = untuk membuat style style titik
 */
