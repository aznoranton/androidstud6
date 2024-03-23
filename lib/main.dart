import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' as io;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Demo',
      home: Platform(),
    );
  }
}

class Platform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform'),
      ),
      body: Container(

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Мы сейчас на:'),
              SizedBox(height: 20),
              Text(
                _getPlatform(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  String _getPlatform() {
    if (kIsWeb) {
      return 'Web';
    } else if (io.Platform.isAndroid) {
      return 'Android';
    } else if (io.Platform.isWindows){
      return 'Windows';
    }else{
      return "Unknown Platform";
    }
  }
}