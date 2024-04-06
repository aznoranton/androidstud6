import 'package:flutter/material.dart';
import 'package:untitled/screens/second.dart';
import 'package:untitled/screens/first.dart';
import 'package:untitled/screens/fourth.dart';
import 'package:untitled/screens/fifth.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'First Screen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstScreen()),
                );
              },
              child: const Text('First Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourthScreen()),
                );
              },
              child: const Text('Fourth Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FifthScreen()),
                );
              },
              child: const Text('Fifth Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
