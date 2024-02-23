import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:session_4/providers/counter_provider.dart';
import 'package:session_4/screens/first_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: const MaterialApp(
        home: FirstScreen(),
      ),
    );
  }
}
