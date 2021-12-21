import 'package:equatable/equatable.dart';

abstract class OSLyricHouseState extends Equatable {
  OSLyricHouseState(this.version);
 
  /// notify change state without deep clone state
  final int version;

  /// Copy object for use in action
  /// if need use deep clone
  OSLyricHouseState getStateCopy();

  OSLyricHouseState getNewVersion();

  @override
  List<Object> get props => [version];
}

/// UnInitialized
class UnOSLyricHouseState extends OSLyricHouseState {

  UnOSLyricHouseState(int version) : super(version);

  @override
  String toString() => 'UnOSLyricHouseState';

  @override
  UnOSLyricHouseState getStateCopy() {
    return UnOSLyricHouseState(0);
  }

  @override
  UnOSLyricHouseState getNewVersion() {
    return UnOSLyricHouseState(version+1);
  }
}

/// Initialized
class InOSLyricHouseState extends OSLyricHouseState {
  
  InOSLyricHouseState(int version, this.hello) : super(version);
 
  final String hello;

  @override
  String toString() => 'InOSLyricHouseState $hello';

  @override
  InOSLyricHouseState getStateCopy() {
    return InOSLyricHouseState(version, hello);
  }

  @override
  InOSLyricHouseState getNewVersion() {
    return InOSLyricHouseState(version+1, hello);
  }

  @override
  List<Object> get props => [version, hello];
}

class ErrorOSLyricHouseState extends OSLyricHouseState {
  ErrorOSLyricHouseState(int version, this.errorMessage): super(version);
 
  final String errorMessage;
  
  @override
  String toString() => 'ErrorOSLyricHouseState';

  @override
  ErrorOSLyricHouseState getStateCopy() {
    return ErrorOSLyricHouseState(version, errorMessage);
  }

  @override
  ErrorOSLyricHouseState getNewVersion() {
    return ErrorOSLyricHouseState(version+1, 
    errorMessage);
  }

  @override
  List<Object> get props => [version, errorMessage];
}
