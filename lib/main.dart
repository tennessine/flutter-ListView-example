import 'package:flutter/material.dart';

Widget _generateItem(int index) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Image.network(
          'http://via.placeholder.com/200x100?text=Item$index',
          width: 200.0,
          height: 100.0,
        ),
        Expanded(
          child: Text('Item $index'),
        ),
      ],
    ),
  );
}

List<Widget> _generate(int num) {
  return List.generate(num, (index) => _generateItem(index));
}

class StaticListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Static ListView'),
      ),
      body: ListView(
        children: _generate(100),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StaticListView(),
  ));
}