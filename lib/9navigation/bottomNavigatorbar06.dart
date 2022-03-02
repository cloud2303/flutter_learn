import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int currentIndex;
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
        icon: Icon(Icons.home), backgroundColor: Colors.blue, label: "首页"),
    BottomNavigationBarItem(
        icon: Icon(Icons.message), backgroundColor: Colors.green, label: "消息"),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        backgroundColor: Colors.pink,
        label: "购物车"),
    BottomNavigationBarItem(
        icon: Icon(Icons.person), backgroundColor: Colors.teal, label: "我的"),
  ];
  final List<Center> pages = [
    Center(child: Text("Home", style: TextStyle(fontSize: 50))),
    Center(child: Text("Message", style: TextStyle(fontSize: 50))),
    Center(child: Text("shoppingcard", style: TextStyle(fontSize: 50))),
    Center(child: Text("profile", style: TextStyle(fontSize: 50))),
  ];
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("底部导航"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        // type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }

  void _changePage(int index) {
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
