import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {

  List<BottomNavigationBarItem> _items = [];
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    //_items = new List();
    _items = []; //Needed if you have null safety enabled
    _items.add( const BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'));
    _items.add( const BottomNavigationBarItem(icon: Icon(Icons.weekend), label: 'Weekend'));
    _items.add( const BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:  const Text('Name here'),
      ),
      body:  Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                 Text(_value)
              ],
            ),
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item) {
          setState((){
            _index = item;
            _value = "Current value is: ${_index.toString()}";
          });
        },

      ),
    );
  }


}
