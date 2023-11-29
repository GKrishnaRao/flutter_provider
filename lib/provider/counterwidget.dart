import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the Counter instance using Provider
    var counter = Provider.of<Counter>(context);
    print('Counter = ${counter.value}');

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Counter Value:',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '${counter.value}',
            style: const TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Increment the counter value using the Counter instance
              counter.value++;
              print('Increment Counter = ${counter.value}');
              counter.notifyListeners();
            },
            child: const Text('Increment'),
          ),
          ElevatedButton(
            onPressed: () {
              // Decrement the counter value using the Counter instance
              counter.value--;
              print('Decrement Counter = ${counter.value}');
              counter.notifyListeners();
            },
            child: const Text('Decrement'),
          ),
        ],
      ),
    );
  }
}


