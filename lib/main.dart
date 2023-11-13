import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class GreetingWidget extends StatelessWidget {
  final String greeting;
  GreetingWidget(this.greeting);
  @override
  Widget build(BuildContext context) {
    return Text(greeting, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold));
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Counter: $counter', style: TextStyle(fontSize: 20)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text('Increment'),
        ),
      ],);}}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
        appBar: AppBar(title: Text('Widgets Practice')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GreetingWidget('Hey Flutterr!'),
            GreetingWidget('Welcome to Widgets Practice!'),
            CounterWidget(),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  GreetingWidget('Styled Widget 1'),
                  CounterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
