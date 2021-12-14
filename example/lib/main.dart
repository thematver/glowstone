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
        scaffoldBackgroundColor: Colors.lightBlueAccent,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Glowstone(
          radius: 200,
          velocity: 1,
          color: Colors.tealAccent.withOpacity(0.3),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Shine Demo",
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        )),
                Text(
                  "Made by Glowstone",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
