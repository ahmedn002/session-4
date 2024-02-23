import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4/providers/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: (context, counterProvider, _) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Screen 2'),
              Text('You have pushed the button this many times:'),
              Text('${counterProvider.counter}'),
              ElevatedButton(
                onPressed: counterProvider.increment,
                child: Text('Increment'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Go Back'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
