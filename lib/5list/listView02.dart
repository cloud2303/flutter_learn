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
      body: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        ListViewBasic(),
        ListViewHorizontalDemo(),
        ListViewBuilderDemo(),
        ListViewSeprateDemo()
      ]),
    );
  }
}

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          ListTile(
            leading: Icon(
              Icons.alarm,
              size: 50,
            ),
            title: Text("access_a"),
            subtitle: Text("子标题"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.snowboarding,
              size: 50,
            ),
            title: Text("access_a"),
            subtitle: Text("子标题"),
            trailing: Icon(Icons.keyboard_arrow_right),
            selected: true,
            selectedTileColor: Colors.lightGreen,
          ),
          ListTile(
            leading: Icon(
              Icons.generating_tokens,
              size: 50,
            ),
            title: Text("access_a"),
            subtitle: Text("子标题"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}

class ListViewHorizontalDemo extends StatelessWidget {
  const ListViewHorizontalDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 160,
            color: Colors.amber,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.green,
          ),
          Container(
            width: 160,
            color: Colors.black,
          ),
          Container(
            width: 160,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  ListViewBuilderDemo({Key? key}) : super(key: key);
  final List<Widget> users = new List<Widget>.generate(
      20,
      (index) => OutlinedButton(
            onPressed: () {},
            child: Text("hello $index"),
          ));
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: users.length,
        itemExtent: 40, //高度
        itemBuilder: (context, index) {
          return users[index];
        },
      ),
    );
  }
}

class ListViewSeprateDemo extends StatelessWidget {
  ListViewSeprateDemo({Key? key}) : super(key: key);

  final List<Widget> products = List<Widget>.generate(
      20,
      (index) => ListTile(
            leading: Image.asset('images/flutter.jpg'),
            title: Text("images/flutter.jpg"),
            subtitle: Text("子标题"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ));
  @override
  Widget build(BuildContext context) {
    Widget dividerOdd = const Divider(
      color: Colors.blue,
      thickness: 2,
    );
    Widget dividerEven = const Divider(
      color: Colors.red,
      thickness: 2,
    );
    return Column(children: [
      ListTile(title: Text("商品列表")),
      Container(
        height: 200,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return products[index];
            },
            //分割器的构造器
            separatorBuilder: (context, index) {
              return index % 2 == 0 ? dividerOdd : dividerEven;
            },
            itemCount: products.length),
      )
    ]);
  }
}
