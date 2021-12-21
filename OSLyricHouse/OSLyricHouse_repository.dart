import 'package:flutter_filesundefined/index.dart';

class OSLyricHouseRepository {
  final OSLyricHouseProvider _oSLyricHouseProvider = OSLyricHouseProvider();

  OSLyricHouseRepository();

  void test(bool isError) {
    _oSLyricHouseProvider.test(isError);
  }
}