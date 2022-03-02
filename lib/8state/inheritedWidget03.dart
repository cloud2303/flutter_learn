import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: MyState(),
    );
  }
}

//创建数据共享组件
class ShareDataWidget extends InheritedWidget {
  final int num;
  final Widget child;

  ShareDataWidget({Key? key, required this.child, required this.num})
      : super(key: key, child: child);

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}

class MyState extends StatefulWidget {
  const MyState({Key? key}) : super(key: key);

  @override
  _MyStateState createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _num = 0;
  void _increment() {
    setState(() => _num++);
  }

  void _decrement() {
    setState(() => _num--);
  }

  @override
  Widget build(BuildContext context) {
    return ShareDataWidget(
        num: _num,
        child: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: _decrement, child: Icon(Icons.exposure_minus_1)),
            Padding(
              padding: EdgeInsets.all(20),
              //跨组件访问数据
              child: MyCounter(),
            ),
            ElevatedButton(onPressed: _increment, child: Icon(Icons.add))
          ]),
        ));
  }
}

class MyCounter extends StatefulWidget {
  MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context)!.num.toString());
  }
}
