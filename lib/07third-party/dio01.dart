import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

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
      body: DioDemo(),
    );
  }
}

class DioDemo extends StatelessWidget {
  const DioDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("点击发送请求"),
        onPressed: () {
          //调用http请求
          getIpAddress();
        },
      ),
    );
  }

  void getIpAddress() async {
    try {
      final url = 'https://httpbin.org/ip';
      Response response = await Dio().get(url);
      print(response.data['origin']);
    } catch (e) {
      print(e);
    }
  }
}
