import 'dart:async';
import 'dart:developer' as developer;

import 'package:flutter_filesundefined/index.dart';
import 'package:meta/meta.dart';

@immutable
abstract class OSLyricHouseEvent {
  Stream<OSLyricHouseState> applyAsync(
      {OSLyricHouseState currentState, OSLyricHouseBloc bloc});
  final OSLyricHouseRepository _oSLyricHouseRepository = OSLyricHouseRepository();
}

class UnOSLyricHouseEvent extends OSLyricHouseEvent {
  @override
  Stream<OSLyricHouseState> applyAsync({OSLyricHouseState? currentState, OSLyricHouseBloc? bloc}) async* {
    yield UnOSLyricHouseState(0);
  }
}

class LoadOSLyricHouseEvent extends OSLyricHouseEvent {
   
  final bool isError;
  @override
  String toString() => 'LoadOSLyricHouseEvent';

  LoadOSLyricHouseEvent(this.isError);

  @override
  Stream<OSLyricHouseState> applyAsync(
      {OSLyricHouseState? currentState, OSLyricHouseBloc? bloc}) async* {
    try {
      yield UnOSLyricHouseState(0);
      await Future.delayed(const Duration(seconds: 1));
      _oSLyricHouseRepository.test(isError);
      yield InOSLyricHouseState(0, 'Hello world');
    } catch (_, stackTrace) {
      developer.log('$_', name: 'LoadOSLyricHouseEvent', error: _, stackTrace: stackTrace);
      yield ErrorOSLyricHouseState(0, _.toString());
    }
  }
}
