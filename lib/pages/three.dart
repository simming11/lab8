import 'package:flutter/material.dart';

class Threepage extends StatefulWidget {
  const Threepage({super.key, required this.data});
   final String data;


  @override
  State<Threepage> createState() => _ThreepageState();
}

class _ThreepageState extends State<Threepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("three page"),
      ),
      body: Center(
        child: Text(widget.data),
      ),
    );
  }
}