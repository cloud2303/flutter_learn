import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Swiper"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: FlutterSwiperDemo(),
    );
  }
}

class FlutterSwiperDemo extends StatelessWidget {
  FlutterSwiperDemo({Key? key}) : super(key: key);
  final List<String> images = ['images/1.jpg', 'images/2.jpg', 'images/3.jpg'];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 200,
          child: Swiper(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(images[index], fit: BoxFit.cover);
            },
            pagination: SwiperPagination(), //轮播图指示点
            control: SwiperControl(), //左右箭头导航
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(images[index], fit: BoxFit.cover);
            },
            viewportFraction: 0.7,
            scale: 0.7,
          ),
        ),
        Container(
          height: 200,
          child: Swiper(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(images[index], fit: BoxFit.fill);
            },
            itemWidth: 300,
            itemHeight: 200,
            layout: SwiperLayout.TINDER,
          ),
        )
      ],
    );
  }
}
