import 'package:flutter/material.dart';
import 'package:lab8/pages/twopage.dart';

class Onepages extends StatefulWidget {
  const Onepages({super.key});

  @override
  State<Onepages> createState() => _OnepagesState();
}

class _OnepagesState extends State<Onepages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("lab8 navigation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("this is Onepages"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Twopages()));
                },
                child: const Text("ไปยังหน้าที่ 2"))
          ],
        ),
      ),
    );
  }
}
