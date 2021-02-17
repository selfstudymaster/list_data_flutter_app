import 'package:flutter/material.dart';

import 'items_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter List Data',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ItemsListPage(title: 'Flutter List Data Home Page'),
    );
  }
}
// ItemsListPage()のStatefulWidgetを別ファイルitems_list_page.dartに切り出す