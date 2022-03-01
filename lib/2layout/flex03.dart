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
      body: const FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //验证expended
        Row(
          children: [
            Container(
              color: Colors.red,
              height: 50,
              width: 50,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 50,
              ),
            )
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //水平方向排列方式
          textDirection: TextDirection.rtl,
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
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
                child: Container(
                  color: Colors.teal,
                  height: 50,
                  // width: 50,
                ),
                flex: 2),
            Expanded(
                child: Container(
                  color: Colors.pink,
                  height: 50,
                  // width: 50,
                ),
                flex: 1)
          ],
        ),
        Container(
            height: 100,
            margin: EdgeInsets.all(50),
            child: Flex(
              verticalDirection: VerticalDirection.up, //默认是down向下
              direction: Axis.vertical,
              children: [
                Expanded(
                    child: Container(
                      color: Colors.teal,
                      height: 50,
                      // width: 50,
                    ),
                    flex: 2),
                // Spacer(flex: 1),
                Expanded(
                    child: Container(
                      color: Colors.pink,
                      height: 50,
                      // width: 50,
                    ),
                    flex: 1)
              ],
            )),
      ],
    );
  }
}
