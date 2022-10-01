import 'package:flutter/material.dart';
import 'package:pomoduck/utils/style/pomoduck_theme.dart';

import 'home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pomoduck',
      theme: PomoduckTheme.themeData,
      home: const HomePage(),
    );
  }
}
