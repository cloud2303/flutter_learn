import 'package:flutter/material.dart';

// import '01_basic/hello01.dart';
// import '01_basic/text02.dart';
// import '2layout/container01.dart';
// import '2layout/row02.dart';
// import '2layout/flex03.dart';
// import '2layout/wrap04.dart';
// import '2layout/stack05.dart';
// import '2layout/card06.dart';
// import '3button/button01.dart';
// import '4image/image.dart';
// import '5list/singleChildScrollView01.dart';
// import '5list/listView02.dart';
// import '5list/gridView03.dart';
// import '5list/gridView04.dart';
// import "6others/cupertino01.dart";
// import '07third-party/dio01.dart';
import '07third-party/flutter_swiper02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: const Home(),
      theme: ThemeData(fontFamily: "NotoSans"),
      debugShowCheckedModeBanner: false,
    );
  }
}
