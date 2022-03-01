import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column_Row"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  WrapDemo({Key? key}) : super(key: key);
  final List<String> _list = ["司马懿", "曹操", "曹仁", "曹洪", "张辽", "许褚"];
  List<Widget> _weiGuo() {
    return _list
        .map((item) => Chip(
              avatar: const CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text("魏"),
              ),
              label: Text(item),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Wrap(
            children: _weiGuo(),
            spacing: 8.0, //水平方向间距
            runSpacing: 50, //垂直方向间距
            alignment: WrapAlignment.spaceAround, //主轴方向的对齐方式
            runAlignment: WrapAlignment.spaceAround //水平方向的对齐方式
            ),
        Wrap(
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("关羽"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("张飞"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("赵云"),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("诸葛亮"),
            )
          ],
        )
      ],
    );
  }
}
