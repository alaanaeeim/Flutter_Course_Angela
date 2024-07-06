import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(
            'I Am Rich',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey[900],
          shadowColor: Colors.deepOrangeAccent,
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
            width: 200,
            height: 200,
          ),
        ),
      ),
    ),
  );
}
