import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";
import 'dart:io';

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
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget dialogBox;
    //判断当前平台信息
    if (Platform.isIOS) {
      //加载ios风格的组件
      dialogBox = CupertinoDemo();
    } else if (Platform.isAndroid) {
      //加载android风格的组件
      dialogBox = MaterialDemo();
    }
    return Container(
      child: Column(children: [
        //安卓风格组件
        Text("安卓风格"),
        MaterialDemo(),

        //ios风格组件
        Text("ios风格"),
        CupertinoDemo()
      ]),
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AlertDialog(
      title: Text("提示"),
      content: Text("确认删除么?"),
      actions: [
        TextButton(
            onPressed: () {
              print("取消的逻辑");
            },
            child: Text("取消")),
        TextButton(
            onPressed: () {
              print("确认的逻辑");
            },
            child: Text("确认"))
      ],
    ));
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text("提示"),
        content: Text("确认删除么"),
        actions: [
          CupertinoDialogAction(
              child: TextButton(
                  onPressed: () {
                    print("取消的逻辑");
                  },
                  child: Text("取消"))),
          CupertinoDialogAction(
              child: TextButton(
                  onPressed: () {
                    print("确认的逻辑");
                  },
                  child: Text("确认")))
        ],
      ),
    );
  }
}
