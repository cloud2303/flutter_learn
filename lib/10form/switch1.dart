import 'package:flutter/cupertino.dart';
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
      body: SwitchDemo(),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

bool _switchValue = false;

class _SwitchDemoState extends State<SwitchDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Switch(
            value: _switchValue,
            onChanged: (bool val) {
              setState(() {
                _switchValue = val;
              });
            },
            activeColor: Colors.orange,
            activeTrackColor: Colors.pink,
            inactiveTrackColor: Colors.grey,
            inactiveThumbColor: Colors.blue,
          ),
          title: Text("当前的状态是:${_switchValue ? "选中" : "未选中"}"),
        ),
        ListTile(
          leading: CupertinoSwitch(
            value: _switchValue,
            onChanged: (bool val) {
              setState(() {
                _switchValue = val;
              });
            },
            activeColor: Colors.red,
            trackColor: Colors.yellow,
          ),
          title: Text("当前的状态是:${_switchValue ? "选中" : "未选中"}"),
        )
      ],
    );
  }
}
