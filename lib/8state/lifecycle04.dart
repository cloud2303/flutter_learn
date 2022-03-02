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

class MyState extends StatefulWidget {
  const MyState({Key? key}) : super(key: key);

  @override
  _MyStateState createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _num = 0;
  @override
  void initState() {
    //init state
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyState oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  void _increment() {
    print("setstate");
    setState(() => _num++);
  }

  void _decrement() {
    print("setstate");
    setState(() => _num--);
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Center(
      child: Column(children: [
        ElevatedButton(
            onPressed: _decrement, child: Icon(Icons.exposure_minus_1)),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text("$_num"),
        ),
        ElevatedButton(onPressed: _increment, child: Icon(Icons.add))
      ]),
    );
  }
}
