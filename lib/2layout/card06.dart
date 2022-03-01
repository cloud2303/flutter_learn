import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(30),
          color: Colors.purpleAccent,
          elevation: 20, //阴影高度
          shadowColor: Colors.yellow, //阴影颜色
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.yellow, width: 3)),

          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.headphones,
                  size: 50,
                ),
                title: Text(
                  "章三",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "董事长",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.headphones,
                  size: 50,
                ),
                title: Text(
                  "电话：1232874892375893475",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.headphones,
                  size: 50,
                ),
                title: Text(
                  "地址：u238月5化繁为简客人防护课",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.headphones,
                  size: 50,
                ),
                title: Text(
                  "里斯",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "副董事长",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(
                  Icons.headphones,
                  size: 50,
                ),
                title: Text(
                  "电话：1232874892375893475",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.headphones,
                  size: 50,
                ),
                title: Text(
                  "地址：u238月5化繁为简客人防护课",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
