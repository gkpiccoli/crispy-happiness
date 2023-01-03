import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Home Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_task_rounded)),
          title: const Text('Flutter: Primeiros Passos'),
        ),
        body: ListView(
          children: [
            BlocosColoridos(
                cor1: Colors.greenAccent,
                cor2: Colors.blueAccent,
                cor3: Colors.pink)
          ],
        ),
      ),
    );
  }
}

class BlocosColoridos extends StatelessWidget {
  const BlocosColoridos(
      {super.key, required this.cor1, required this.cor2, required this.cor3});

  final Color cor1;
  final Color cor2;
  final Color cor3;

  @override
  Widget build(BuildContext context) {
    double altura = 180;
    double largura = 100;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              children: [
                Container(
                  color: cor1,
                  height: altura,
                  width: largura,
                ),
                Container(
                  color: cor2,
                  height: altura,
                  width: largura,
                ),
                Container(
                  color: cor3,
                  height: altura,
                  width: largura,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
