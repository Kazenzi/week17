import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScafePage(),
    );
  }
}

class ScafePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gridview and TextButton'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.green
            ,
            child: Center(
              child: Text(
                'Container',
                style: TextStyle(fontSize: 24, color: Colors.white
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: TextStyle(fontSize: 24),
                  ),
                );
              }),
            ),
          ),
          TextButton(
            onPressed: () {
              print('TextButton pressed');
            },
            child: Text(
              'Click Here',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}