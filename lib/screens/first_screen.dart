import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4/providers/counter_provider.dart';
import 'package:session_4/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, _) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Screen 1'),
                Text('You have pushed the button this many times:'),
                Text('${counterProvider.counter}'),
                ElevatedButton(
                  onPressed: counterProvider.increment,
                  child: Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ),
                    );
                  },
                  child: Text('Go to Screen 2'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
