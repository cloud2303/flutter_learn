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
      body: GridViewBuilder(),
    );
  }
}

class GridViewCount extends StatelessWidget {
  const GridViewCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        children:
            List.generate(10, (index) => Image.asset("images/flutter.jpg")),
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        childAspectRatio: 1.5,
      ),
    );
  }
}

class GridViewExtent extends StatelessWidget {
  const GridViewExtent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.extent(
        children:
            List.generate(10, (index) => Image.asset("images/flutter.jpg")),

        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
        // childAspectRatio: 1.5,
        maxCrossAxisExtent: 100, //子组件的宽度
      ),
    );
  }
}

class GridViewBuilder extends StatelessWidget {
  GridViewBuilder({Key? key}) : super(key: key);
  final List<dynamic> _tiles = [
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.orange),
    Container(color: Colors.pink),
    Container(color: Colors.teal),
    Container(color: Colors.grey),
    Container(color: Colors.blue),
    Container(color: Colors.green),
    Container(color: Colors.orange),
    Container(color: Colors.pink),
    Container(color: Colors.teal),
    Container(color: Colors.grey),
    Container(color: Colors.blue),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.0),
        itemCount: _tiles.length,
        itemBuilder: (context, index) {
          return _tiles[index];
        },
      ),
    );
  }
}
