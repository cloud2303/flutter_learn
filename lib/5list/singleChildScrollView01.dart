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
      body: SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(10),
            reverse: true,
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text("按钮1"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("按钮2"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("按钮3"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("按钮4"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("按钮5"),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text("按钮6"),
                )
              ],
            )),
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(10),
            reverse: true,
            physics: BouncingScrollPhysics(),
            child: Column(
                children: List.generate(
                    100,
                    (index) => OutlinedButton(
                          onPressed: () {},
                          child: Text(index.toString()),
                        ))))
      ],
    );
  }
}
