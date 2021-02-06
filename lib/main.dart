import 'package:flutter/material.dart';
import 'package:flutter_context/colorful_screen.dart';
import 'package:flutter_context/round_big_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Researching the BuildContext',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  Color currentColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Context App'),
      ),
      body: ListView.separated(
        itemCount: buttonColors.length,
        separatorBuilder: (context, _) => SizedBox(height: 10),
        itemBuilder: (context, index) => RoundBigButton(
            color: buttonColors[index],
            tapHandler: () => buttonTapHandler(buttonColors[index])),
      ),
    );
  }

  void buttonTapHandler(Color color) {
    setState(() {
      currentColor = color;
      print('current color is: ${currentColor.toString()}');
    });
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ColorfulScreen()));
  }
}

const buttonColors = [
  Colors.red,
  Colors.green,
  Colors.deepPurple,
];
