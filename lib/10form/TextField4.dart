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
      body: TextFieldDemo(),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  late String phone;
  late String password;
  late String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(children: [
        TextField(
          autofocus: true,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.mobile_screen_share),
            labelText: "手机号",
            hintText: "请输入手机号",
          ),
          maxLength: 11,
          onChanged: (value) {
            setState(() {
              phone = value;
            });
          },
        ),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.code_outlined),
            labelText: "密码",
            hintText: "请输入密码",
          ),
          maxLength: 11,
          onChanged: (value) {
            setState(() {
              password = value;
            });
          },
        )
      ]),
    );
  }
}
