import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          children: [
            TextButton(
              onPressed: () {
                print("点击我了");
              },
              onLongPress: () {
                print("长按了");
              },
              child: Text("点我"),
            ),
            ElevatedButton(
              onPressed: () {
                print("点击我了");
              },
              onLongPress: () {
                print("长按了");
              },
              child: Text("点我"),
            ),
            OutlinedButton(
              onPressed: () {
                print("点击我了");
              },
              onLongPress: () {
                print("长按了");
              },
              child: Text("点我"),
            ),
            OutlinedButton(
              onPressed: () {
                print("点击我了");
              },
              onLongPress: () {
                print("长按了");
              },
              child: Text("outline"),
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30)),
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      //按下按钮时的前景色
                      return Colors.red;
                    }
                    //默认状态的颜色
                    return Colors.blue;
                  }),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      //按下按钮时的前景色
                      return Colors.yellow;
                    }
                    //默认状态的颜色
                    return Colors.white;
                  }),
                  shadowColor: MaterialStateProperty.all(Colors.yellow),
                  elevation: MaterialStateProperty.all(20),
                  side: MaterialStateProperty.all(
                      BorderSide(color: Colors.green)),
                  //声明按钮形状
                  shape: MaterialStateProperty.all(StadiumBorder(
                      side: BorderSide(color: Colors.green, width: 2))),
                  //设置按钮大小
                  minimumSize: MaterialStateProperty.all(Size(150, 60)),
                  //设置水波纹
                  overlayColor: MaterialStateProperty.all(Colors.purple)),
            ),
            IconButton(
                onPressed: () {
                  print("iconbutton");
                },
                icon: Icon(Icons.headphones)),
            TextButton(
                onPressed: () {
                  print("textbutton");
                },
                child: Text("123")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text("hello"))
          ],
        ));
  }
}
