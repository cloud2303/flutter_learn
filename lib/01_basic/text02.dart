import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const TextDemo(),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "速开始掘金Flutter社区 快速开发 毫秒级的热重载,修改后,您的应用界面会立即更新。使用丰富的、完全可定制的widget在几分",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.blue[200]),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
        RichText(
            text: const TextSpan(
                text: "hello",
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(0xFF, 0x00, 0xFF, 0x00)),
                children: [
              TextSpan(
                  text: "Flutter",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 255)))
            ]))
      ],
    );
  }
}
