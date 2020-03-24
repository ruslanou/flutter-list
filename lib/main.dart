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
  Widget column = Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('title', style: TextStyle(fontSize: 16),),
        Text('Subtitle')
      ],
    ),
  );
  return ListView.builder(
    itemBuilder: (context, index) {
      return Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              column,
              column,
            ],
          )
        )
      );
    }
  );
}