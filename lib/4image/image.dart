import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //加载本地图片
        Image.asset(
          'images/bg1.jpg',
          width: 200,
          height: 200,
          fit: BoxFit.fill,
        ),
        Image.network(
          "http://s9.51cto.com/wyfs02/M00/7F/00/wKiom1cPSAfj_xAOAADpDp_qBCY949.png",
          colorBlendMode: BlendMode.dstIn,
          color: Colors.green,
        )
      ],
    );
  }
}
