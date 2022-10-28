import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomoduck/screen/home/home_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
//Aqui vai vir a maioria das coisas que vimos até agora

  @override
  Widget build(BuildContext context) {
    final store = HomeStore();

    return Scaffold(
      appBar: AppBar(title: const Text('Pomoduck')),
      body: Observer(
        builder: (_) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  store.durationText,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: store.startTimer,
                      child: const Text('Start'),
                    ),
                    ElevatedButton(
                      onPressed: store.stopTimer,
                      child: const Text('Stop'),
                    ),
                    ElevatedButton(
                      onPressed: store.resetTimer,
                      child: const Text('Reset'),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
