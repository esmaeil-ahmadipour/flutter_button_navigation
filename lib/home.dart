import 'package:flutter/material.dart';

enum TabItem { red, green, blue }


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TabItem currentTab = TabItem.red;

  void _selectTab(TabItem tabItem) {
    setState(() {
      currentTab = tabItem;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),
      ),
      body: buildBody(context),
      bottomNavigationBar: BottomNavigation(
        currentTab: currentTab,
        onSelectTab: _selectTab,
        items: <BottomNavigationBarItem>[],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Stack(
      children: <Widget>[
        _buildOffstageNavigator(),
      ],
    );
  }

  _buildOffstageNavigator() {

  }
}
