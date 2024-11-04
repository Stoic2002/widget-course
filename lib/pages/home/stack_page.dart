import 'package:flutter/material.dart';

class StackPositionedPage extends StatefulWidget {
  const StackPositionedPage({super.key});

  @override
  State<StackPositionedPage> createState() => _StackPositionedPageState();
}

class _StackPositionedPageState extends State<StackPositionedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'stack & positioned',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Center(
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: 0.0,
            bottom: 0.0,
            child: Center(
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Center(
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.orange,
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Center(
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
