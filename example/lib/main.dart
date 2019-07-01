import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'src/item_container.dart';
import 'view/show_city_picker.dart';
import 'view/wip.dart';
import 'view/show_full_page_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      theme: new ThemeData(
//        primaryColor: Color(0xFFC91B3A),
//        backgroundColor: Color(0xFFEFEFEF),
//        accentColor: Color(0xFF888888),
//        textTheme: TextTheme(
//          //设置Material的默认字体样式
//          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
//        ),
//
//      ),
      theme: ThemeData.light(),
      title: 'Welcome to Flutt2er',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/name': (_) => new ShowCityPicker(),
        '/full_page': (_) => new ShowFullPageCityPicker(),
        '/city_select': (_) => new WorkInProgress()
      },
      home: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List demoList = [
    {"icon": Icons.place, "name": "ios选择器", "routerName": '/name'},
    {"icon": Icons.fullscreen, "name": "三级全屏选择器", "routerName": '/full_page'},
    {"icon": Icons.location_city, "name": "城市选择器", "routerName": '/city_select'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CityPickers Examples'),
        ),
        body: ItemContainer(
          itemList: demoList,
        ));
  }
}
