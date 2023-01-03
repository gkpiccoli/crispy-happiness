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
              cor3: Colors.pink,
              cor4: Colors.indigo,
            ),
            BlocosColoridos(
                cor1: Colors.white,
                cor2: Colors.purple,
                cor3: Colors.pinkAccent,
                cor4: Colors.green),
            BlocosColoridos(
                cor1: Colors.red,
                cor2: Colors.black38,
                cor3: Colors.yellow,
                cor4: Colors.tealAccent)
          ],
        ),
      ),
    );
  }
}

class BlocosColoridos extends StatelessWidget {
  const BlocosColoridos(
      {super.key,
      required this.cor1,
      required this.cor2,
      required this.cor3,
      required this.cor4});

  final Color cor1;
  final Color cor2;
  final Color cor3;
  final Color cor4;

  @override
  Widget build(BuildContext context) {
    double altura = 170;
    double largura = 120;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(7, 8, 9, 10),
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
              Container(
                color: cor4,
                height: altura,
                width: largura,
              )
            ],
          ),
        ),
      ],
    );
  }
}
