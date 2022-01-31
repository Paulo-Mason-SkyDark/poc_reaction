import 'dart:async';

import 'package:mobx/mobx.dart';

part 'reaction_store.g.dart';

class ReactionTest = _ReactionBase with _$ReactionTest;

abstract class _ReactionBase with Store {
  @observable
  bool sdf = false;

  @action
  setSDF(bool isClosed) {
    sdf = isClosed;
  }

  Map<String, Future<dynamic> Function()> t = {
    "med": () async {
      print("in progress...");
      await Future<void>.delayed(Duration(seconds: 2));
    },
    "login": () async {
      print("in progress login");
      await Future<void>.delayed(Duration(seconds: 1));
    }
  };
}
