import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App mo may toyo"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('You have pushed the button this many times: '),
          Text('$_counter', style: Theme.of(context).textTheme.displayLarge),
          ClipOval(child: Image(image: AssetImage("images2.jpg"))),
          Expanded(child: mySubjects())
        ],
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          backgroundColor: Colors.cyanAccent,
          child: Icon(Icons.add)),
    );
  }
}

Widget mySubjects() {
  List<String> subjects = [
    "CMSC 12",
    "CMSC 21",
    "CMSC 22",
    "CMSC 23",
    "CMSC 100"
  ];
  return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: subjects.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.cyanAccent,
          child: Center(child: Text("${subjects[index]}")),
        );
      });
}
