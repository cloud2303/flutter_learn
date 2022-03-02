import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //2.创建Provider（注册数据模型）
    return ChangeNotifierProvider(
      create: (BuildContext context) => new LikesModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("State"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Text("${context.watch<LikesModel>()._counter}"),
        OutlinedButton(
            onPressed: Provider.of<LikesModel>(context).incrementCounter,
            child: Icon(Icons.thumb_up))
      ]),
    );
  }
}

//1.创建数据模型
class LikesModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  incrementCounter() {
    //累加
    _counter++;
    //通知UI更新
    notifyListeners();
  }
}
