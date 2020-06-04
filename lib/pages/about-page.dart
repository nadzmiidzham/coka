import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'About Me',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50
                ),
              ),
              Text('Muhammad Nadzmi Bin Mohamed Idzham'),
              Text('[description]'),
              Text(
                'nadzmiidzham@gmail.com',
                style: TextStyle(
                  color: Colors.blue
                ),
              ),
              Text(
                'http://github.com/nadzmiidzham',
                style: TextStyle(
                  color: Colors.blue
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
