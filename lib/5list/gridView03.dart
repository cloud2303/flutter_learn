import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChildScrollView"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: GridViewDemo(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //指定列数
            mainAxisSpacing: 20, //主轴方向间距
            crossAxisSpacing: 10, //交叉轴的间距
            childAspectRatio: 1.5),
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.orange),
          Container(color: Colors.pink),
          Container(color: Colors.teal),
          Container(color: Colors.grey),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.orange),
          Container(color: Colors.pink),
          Container(color: Colors.teal),
          Container(color: Colors.grey),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
