import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Layout01Page extends StatelessWidget {
  const Layout01Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 150,
                  color: Colors.red,
                  margin: EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/images/senai_logo.png',
                    height: 200,
                    width: 50,
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
            )),
          ),
        ],
      ),
    );
  }
}
