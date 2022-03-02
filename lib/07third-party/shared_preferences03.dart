import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swiper"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: SharePreferencesDemo(),
    );
  }
}

class SharePreferencesDemo extends StatelessWidget {
  const SharePreferencesDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: _incrementCounter, child: Text("递增")),
          ElevatedButton(onPressed: _decrementCounter, child: Text("递减")),
          ElevatedButton(onPressed: _addMyContent, child: Text("设置字符串")),
          ElevatedButton(onPressed: _getMyContent, child: Text("获取字符串")),
          ElevatedButton(onPressed: _clearContent, child: Text("清空")),
        ],
      ),
    );
  }

  _incrementCounter() async {
    //获取保存实例
    final prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print("pressed $counter times");
    await prefs.setInt("counter", counter);
  }

  _decrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0);
    if (counter > 0) {
      counter--;
    }
    print("pressed $counter times");
    await prefs.setInt("counter", counter);
  }

  _addMyContent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("hi", "hello world");
    String content = prefs.getString('hi') ?? "";
    print("设置字符串的内容是$content");
  }

  _getMyContent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String content = prefs.getString('hi') ?? "";
    print("得到字符串的内容是$content");
  }

  _clearContent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
