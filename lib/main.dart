import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Home());
}

//listView垂直
Widget listView() {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.alarm),
        title: Text('alarm'),
        onTap: () {
          print('alarm click');
        },
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text('phone'),
        onTap: () => print('phone click'),
      ),
      ListTile(
        leading: Icon(Icons.airplay),
        title: Text('airplay'),
      ),
      ListTile(
        leading: Icon(Icons.airplay),
        title: Text('airplay'),
      ),
      ListTile(
        leading: Icon(Icons.airplay),
        title: Text('airplay'),
      ),
      ListTile(
        leading: Icon(Icons.alarm),
        title: Text('alarm'),
      ),
    ],
  );
}

//水平的listView
//能设置宽度的image，container
Widget listView2() {
  return Container(
    height: 200.0,
    child: ListView(
      scrollDirection: Axis.horizontal, // 水平方向
      children: <Widget>[
        Container(
          width: 160.0,
          color: Colors.blue,
        ),
        Container(
          width: 160.0,
          color: Colors.red,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Text(
                '水平',
                style: TextStyle(color: Colors.black, fontSize: 26.0),
                textAlign: TextAlign.center,
              ),
              Text(
                '水平',
                style: TextStyle(color: Colors.black, fontSize: 26.0),
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.accessibility_new,
                color: Colors.grey[600],
                size: 20.0,
              )
            ],
          ),
        ),
        Container(
          width: 160.0,
          color: Colors.yellow,
        )
      ],
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'listView Demo',
      home: new Scaffold(
          appBar: AppBar(
            title: Text('listView Demo'),
            leading: Icon(Icons.wifi, color: Colors.white, size: 24.0),
            actions: <Widget>[
              Icon(Icons.access_alarm, color: Colors.red, size: 24.0),
            ],
          ),
          body: Center(
            child: listViewBuilder(),
          )),
    );
  }
}

//列表构造器ListView.builder 指定itemBuilder是一个函数对象，itemCount个数
Widget listViewBuilder() {
  return ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('$index'),
        leading: Icon(Icons.phone),
      );
    },
    itemCount: 60,
  );
}
