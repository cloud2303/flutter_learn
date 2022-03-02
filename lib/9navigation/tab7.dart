import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List<Widget> _tabs = [
    Tab(
      text: "首页",
      icon: Icon(Icons.home),
    ),
    Tab(
      text: "添加",
      icon: Icon(Icons.add),
    ),
    Tab(
      text: "搜索",
      icon: Icon(Icons.search),
    )
  ];
  final List<Widget> _tabViews = [
    Icon(
      Icons.home,
      size: 120,
      color: Colors.red,
    ),
    Icon(
      Icons.add,
      size: 120,
      color: Colors.green,
    ),
    Icon(
      Icons.search,
      size: 120,
      color: Colors.pink,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tan"),
            leading: const Icon(Icons.menu),
            actions: const [Icon(Icons.settings)],
            elevation: 0.0,
            centerTitle: true,
            bottom: TabBar(
              tabs: _tabs,
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 10,
            ),
          ),
          body: TabBarView(children: _tabViews),
          bottomNavigationBar: TabBar(
            tabs: _tabs,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
          ),
        ));
  }
}
