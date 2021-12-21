import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_filesundefined/index.dart';

class OSLyricHouseScreen extends StatefulWidget {
  const OSLyricHouseScreen({
    required OSLyricHouseBloc oSLyricHouseBloc,
    Key? key,
  })  : _oSLyricHouseBloc = oSLyricHouseBloc,
        super(key: key);

  final OSLyricHouseBloc _oSLyricHouseBloc;

  @override
  OSLyricHouseScreenState createState() {
    return OSLyricHouseScreenState();
  }
}

class OSLyricHouseScreenState extends State<OSLyricHouseScreen> {
  OSLyricHouseScreenState();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OSLyricHouseBloc, OSLyricHouseState>(
        bloc: widget._oSLyricHouseBloc,
        builder: (
          BuildContext context,
          OSLyricHouseState currentState,
        ) {
          if (currentState is UnOSLyricHouseState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (currentState is ErrorOSLyricHouseState) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(currentState.errorMessage),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0),
                  child: RaisedButton(
                    color: Colors.blue,
                    child: Text('reload'),
                    onPressed: _load,
                  ),
                ),
              ],
            ));
          }
           if (currentState is InOSLyricHouseState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(currentState.hello),
                  const Text('Flutter files: done'),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text('throw error'),
                      onPressed: () => _load(true),
                    ),
                  ),
                ],
              ),
            );
          }
          return Center(
              child: CircularProgressIndicator(),
          );
          
        });
  }

  void _load([bool isError = false]) {
    widget._oSLyricHouseBloc.add(LoadOSLyricHouseEvent(isError));
  }
}
