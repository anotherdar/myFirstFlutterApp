import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 25);

  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('State'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'clicks numbers:',
                style: _textStyle,
              ),
              Text(
                '$_counter',
                style: _textStyle,
              )
            ],
          ),
        ),
        floatingActionButton: _createbuttons());
  }

  Widget _createbuttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _remove,
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _add,
        ),
      ],
    );
  }

  void _add() {
    setState(() => _counter++);
  }

  void _remove() {
    if (_counter > 0) {
      setState(() => _counter--);
    }
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }
}
