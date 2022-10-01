import 'package:flutter/material.dart';

//Example code for this repo
class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: const Text('Default Button'),
      icon: const Icon(Icons.add),
    );
  }
}
