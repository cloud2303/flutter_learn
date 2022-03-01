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
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      textDirection: TextDirection.ltr,
      alignment: Alignment.bottomCenter,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://img0.baidu.com/it/u=857510153,4267238650&fm=253&fmt=auto&app=120&f=JPEG?w=1200&h=675'),
          radius: 200,
        ),
        Positioned(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.red,
            child: Text(
              "hello",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          right: 50,
          top: 20,
        ),
        Text(
          "childrenm",
          style: TextStyle(color: Colors.black, fontSize: 40),
        )
      ],
    ));
  }
}
