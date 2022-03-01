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
      body: const ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Flutter简介 前言 随着移动开发技术的成熟,一些厂商开始考虑跨平台技术的解决方案,从早期的Cordova、Xamarin,再到后来的React Native和Weex等等,可谓是百家齐放,每种框架都有",
        style: TextStyle(fontSize: 20),
      ),
      width: 200,
      height: 200,
      // width: double.infinity, //自适应父元素的宽度
      // height: double.infinity,
      padding: EdgeInsets.all(10.0), //all 四个方向都有
      margin: EdgeInsets.all(10), //上右下左
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 10, color: Colors.red),
            left: BorderSide(width: 10, color: Colors.red),
            right: BorderSide(width: 10, color: Colors.red),
            bottom: BorderSide(width: 10, color: Colors.red),
          ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
          color: Colors.lightGreen,
          gradient: LinearGradient(colors: [Colors.lightBlue, Colors.white])),
      // transform: Matrix4.translationValues(100, 0, 0),
      // transform: Matrix4.rotationZ(-0.1),all
      transform: Matrix4.skewX(0.1),
    );
  }
}
