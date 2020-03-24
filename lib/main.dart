import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListViews'),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sun.jpeg'),
        ),
        title: Text('Sun'),
        subtitle: Text('93 million miles away'),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/moon.jpeg'),
        ),
        title: Text('Moon'),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/star.jpeg'),
        ),
        title: Text('Star'),
        trailing: Icon(Icons.keyboard_arrow_right),
      )
    ],
  );
}