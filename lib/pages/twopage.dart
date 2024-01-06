import 'package:flutter/material.dart';
import 'package:lab8/pages/three.dart';

class Twopages extends StatefulWidget {
  const Twopages({super.key});

  @override
  State<Twopages> createState() => _TwopagesState();
}

class _TwopagesState extends State<Twopages> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is twopage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("this is twopage"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("กลับไปยังหน้า 1")),
            TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Threepage(data: _controller.text),
                      ));
                },
                child: Text("ไปยังหน้า 3"))
          ],
        ),
      ),
    );
  }
}

