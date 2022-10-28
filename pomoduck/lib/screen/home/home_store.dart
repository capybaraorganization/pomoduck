import 'dart:async';

import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  //Aqui será onde vamos guardar os gerenciamentos de estado da home

  @observable
  Timer? timer;

  @observable
  Duration duration = const Duration(minutes: 25);

  @action
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (duration.inSeconds > 0) {
        duration = duration - const Duration(seconds: 1);
      } else {
        timer.cancel();
      }
    });
  }

  @action
  void stopTimer() {
    timer?.cancel();
  }

  @action
  void resetTimer() {
    timer?.cancel();
    duration = const Duration(minutes: 25);
  }

  @computed
  String get durationText =>
      '${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
}
