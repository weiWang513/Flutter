import 'package:flutter/material.dart';
import 'package:ppwic_app/home.dart';
import 'package:ppwic_app/webView.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      // useMaterial3: true
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var c1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tttt'),
      ),
      body: Column(children: [
        TextField(
          controller: c1,
          maxLines: 5,
          minLines: 1,
          decoration: const InputDecoration(prefix: Text('跳转地址：')),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Home()));
              // MaterialPageRoute(builder: (_) => TestWebView(url: c1.text)));
            },
            child: const Text('跳转'))
      ]),
    );
  }
}
