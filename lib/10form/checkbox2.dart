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
      body: CheckBoxDemo(),
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _male = true;
  bool _female = false;
  bool _other = true;
  bool _value1 = true;
  bool _value2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            onChanged: (bool? val) {
              setState(() {
                this._male = val ?? false;
              });
            },
            value: _male,
          ),
          title: Text("男性"),
        ),
        ListTile(
          leading: Checkbox(
            onChanged: (bool? val) {
              setState(() {
                this._female = val ?? false;
              });
            },
            value: _female,
          ),
          title: Text("女"),
        ),
        ListTile(
          leading: Checkbox(
            onChanged: (bool? val) {
              setState(() {
                this._other = val ?? false;
              });
            },
            value: _other,
            activeColor: Colors.pink,
            checkColor: Colors.yellow,
          ),
          title: Text("other"),
        ),
        CheckboxListTile(
          value: this._value1,
          onChanged: (bool? value) {
            setState(() {
              this._value1 = value ?? false;
            });
          },
          title: Text("1点叫我起床"),
          subtitle: Text("太困了起不来"),
          selected: this._value1,
          activeColor: Colors.green,
          checkColor: Colors.pink,
        ),
        CheckboxListTile(
          value: this._value2,
          onChanged: (bool? value) {
            setState(() {
              this._value2 = value ?? false;
            });
          },
          title: Text("2点叫我起床"),
          subtitle: Text("22222222"),
        )
      ],
    );
  }
}
