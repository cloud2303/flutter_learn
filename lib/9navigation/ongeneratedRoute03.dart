import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("首页"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/product");
                },
                child: Text("跳转")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/product/1");
                },
                child: Text("跳转1")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/product/2");
                },
                child: Text("跳转2")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/unknownpage");
                },
                child: Text("unknow路由"))
          ]),
        ));
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("商品页"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text("返回1"))
          ]),
        ));
  }
}

class ProductDetail extends StatelessWidget {
  final String id;
  const ProductDetail({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("商品页"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            Text("当前商品id$id"),
            ElevatedButton(
                onPressed: () => Navigator.pop(context), child: Text("返回1"))
          ]),
        ));
  }
}

class UnknowPage extends StatelessWidget {
  const UnknowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("404未知页面"),
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.settings)],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("unknown返回"))
          ]),
        ));
  }
}
