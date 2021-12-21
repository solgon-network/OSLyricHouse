import 'package:flutter/material.dart';
import 'package:flutter_filesundefined/index.dart';

class OSLyricHousePage extends StatefulWidget {
  static const String routeName = '/oSLyricHouse';

  @override
  _OSLyricHousePageState createState() => _OSLyricHousePageState();
}

class _OSLyricHousePageState extends State<OSLyricHousePage> {
  final _oSLyricHouseBloc = OSLyricHouseBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OSLyricHouse'),
      ),
      body: OSLyricHouseScreen(oSLyricHouseBloc: _oSLyricHouseBloc),
    );
  }
}
