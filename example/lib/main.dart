import 'package:flutter/material.dart';
import 'package:glowstone/glowstone.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glowstone Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueAccent,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Glowstone(
            color: Colors.white,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
