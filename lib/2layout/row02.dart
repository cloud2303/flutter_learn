import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column_Row"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.lightGreen,
        child: Column(
          //主轴的对齐方式
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //交叉轴的对齐方式
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.access_alarm_outlined,
              size: 50,
            ),
            Icon(
              Icons.no_accounts,
              size: 50,
            ),
            Icon(
              Icons.h_mobiledata,
              size: 50,
            ),
            Icon(
              Icons.dangerous,
              size: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.access_alarm_outlined,
                  size: 50,
                ),
                Icon(
                  Icons.no_accounts,
                  size: 50,
                ),
                Icon(
                  Icons.h_mobiledata,
                  size: 50,
                ),
                Icon(
                  Icons.dangerous,
                  size: 50,
                ),
              ],
            )
          ],
        ));
  }
}
