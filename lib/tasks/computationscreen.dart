import 'package:flutter/material.dart';

class ComputationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int result = heavyComputation();
    return Scaffold(
      appBar: AppBar(title: Text('Heavy Computation')),
      body: Center(child: Text('Result: $result')),
    );
  }

  int heavyComputation() {
    int sum = 1000000000;

    return sum * (sum + 1) ~/ 2;
  }
}
