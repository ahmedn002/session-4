import 'package:flutter/material.dart';

class Containeraya extends StatefulWidget {
  final int index;
  const Containeraya({
    super.key,
    required this.index,
  });

  @override
  State<Containeraya> createState() => _ContainerayaState();
}

class _ContainerayaState extends State<Containeraya> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        selected = !selected;
      }),
      child: Container(
        color: selected ? Colors.red : Colors.blue,
        child: Center(
          child: Text(
            '${widget.index}',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
