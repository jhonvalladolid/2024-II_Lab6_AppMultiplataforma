import 'package:flutter/material.dart';

void main() {
  runApp(const MiCalaculadora());
}

class MiCalaculadora extends StatelessWidget {
  const MiCalaculadora({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CalculatorUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalculatorUI extends StatelessWidget {
  const CalculatorUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Display Area (Pantalla de la calculadora)
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.bottomRight,
              child: const Text(
                '0',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Button rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton('7', Colors.blue),
              buildButton('8', Colors.blue),
              buildButton('9', Colors.blue),
              buildButton('/', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton('4', Colors.blue),
              buildButton('5', Colors.blue),
              buildButton('6', Colors.blue),
              buildButton('*', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton('1', Colors.blue),
              buildButton('2', Colors.blue),
              buildButton('3', Colors.blue),
              buildButton('-', Colors.orange),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton('C', Colors.orange),
              buildButton('0', Colors.blue),
              buildButton('=', Colors.orange),
              buildButton('+', Colors.orange),
            ],
          ),
        ],
      ),
    );
  }

  // Método helper para crear botones reutilizables
  Widget buildButton(String text, Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.all(20.0),
            textStyle: const TextStyle(fontSize: 24),
          ),
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
