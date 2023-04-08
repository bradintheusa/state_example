import 'package:flutter/material.dart';
import 'widget_c1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counterA = 0;
  int counterB = 0;

  void _incrementCounterA() {
    setState(() {
      counterA++;
    });
  }

  void _incrementCounterB() {
    setState(() {
      counterB++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                ElevatedButton(
                    onPressed: _incrementCounterA,
                    child: Text("Button A: $counterA")),
                ElevatedButton(
                    onPressed: _incrementCounterB,
                    child: Text("Button B: $counterB"))
              ],
            ),
            Row(children: [WidgetC1(a: counterA, b: counterB)])
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
