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
          title: const Text('Flutter: Desenhando na tela'),
        ),
        body: GridView.count(
          primary: false,
          crossAxisCount: 5,
          padding: EdgeInsets.all(8.0),
          children: [
            Container(
              color: Colors.teal,
            )
          ],
        ),
      ),
    );
  }
}
