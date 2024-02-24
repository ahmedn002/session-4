import 'package:flutter/material.dart';
import 'package:session_4/screens/containeraya.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({
    super.key,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final PageController _pageController = PageController(
    initialPage: 3,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                padEnds: true,
                children: [
                  for (int i = 0; i < 100; i++) Center(child: Containeraya(index: i)),
                ],
              ),
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _pageController.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.linear);
                  },
                  child: Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _myContainer() {
    return Container(
      color: Colors.blue,
    );
  }
}
