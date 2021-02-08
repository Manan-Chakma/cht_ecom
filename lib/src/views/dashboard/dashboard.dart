import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardUI extends StatefulWidget {
  @override
  _DashboardUIState createState() => _DashboardUIState();
}

class _DashboardUIState extends State<DashboardUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('My CHT'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            6,
            (index) => Center(
                  child: Text('Item $index'),
                )),
      ),
    );
  }
}
