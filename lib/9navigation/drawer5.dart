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
      body: HomePage(),
      drawer: DrawerList(),
      endDrawer: DrawerList(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("一二三"),
            accountEmail: Text("2300000491@qq.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/bg1.jpg'),
              fit: BoxFit.cover,
            )),
            currentAccountPicture:
                CircleAvatar(backgroundImage: AssetImage("images/flutter.jpg")),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("设置"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text("余额"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.percent),
            title: Text("我的"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.back_hand),
            title: Text("会退"),
            onTap: () => Navigator.pop(context),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          AboutListTile(
            child: Text("关于"),
            applicationName: "应用名称",
            applicationVersion: "1.0.0",
            icon: CircleAvatar(
              child: Text("AS"),
            ),
            applicationLegalese: "应用法律条例",
            aboutBoxChildren: [Text("12312312312312"), Text("12312312312312")],
            applicationIcon: Image.asset(
              'images/flutter.jpg',
              width: 50,
              height: 50,
            ),
          )
        ],
      ),
    );
  }
}
