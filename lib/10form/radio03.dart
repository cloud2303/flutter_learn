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
      body: RadioDemo(),
    );
  }
}

class RadioDemo extends StatefulWidget {
  RadioDemo({Key? key}) : super(key: key);

  @override
  State<RadioDemo> createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  dynamic gender = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("男"),
            Radio(
              value: 1,
              groupValue: gender,
              onChanged: (value) {
                print(value);
                setState(() {
                  gender = value;
                });
              },
            ),
            Text("女"),
            Radio(
              value: 2,
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
            )
          ],
        )
      ]),
    );
  }
}
