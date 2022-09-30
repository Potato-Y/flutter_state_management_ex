import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class SePage extends StatefulWidget {
  const SePage({super.key});

  @override
  State<SePage> createState() => _SePageState();
}

class _SePageState extends State<SePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('secound'),
      ),
      body: Column(
        children: [
          const Text('Count'),
          Text('${context.watch<Counter>().count}')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_floatingActionButton'),
        onPressed: (() => context.read<Counter>().increment()),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
