import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'package:flutter_filesundefined/index.dart';

class OSLyricHouseBloc extends Bloc<OSLyricHouseEvent, OSLyricHouseState> {
  // todo: check singleton for logic in project
  // use GetIt for DI in projct
  static final OSLyricHouseBloc _oSLyricHouseBlocSingleton = OSLyricHouseBloc._internal();
  factory OSLyricHouseBloc() {
    return _oSLyricHouseBlocSingleton;
  }
  
  OSLyricHouseBloc._internal(): super(UnOSLyricHouseState(0)){
    on<OSLyricHouseEvent>((event, emit) {
      return emit.forEach<OSLyricHouseState>(
        event.applyAsync(currentState: state, bloc: this),
        onData: (state) => state,
        onError: (error, stackTrace) {
          developer.log('$error', name: 'OSLyricHouseBloc', error: error, stackTrace: stackTrace);
          return ErrorOSLyricHouseState(0, error.toString());
        },
      );
    });
  }
  
  @override
  Future<void> close() async{
    // dispose objects
    await super.close();
  }

  @override
  OSLyricHouseState get initialState => UnOSLyricHouseState(0);

}
