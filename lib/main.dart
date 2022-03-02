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
// import '07third-party/flutter_swiper02.dart';
// import '07third-party/shared_preferences03.dart';
// import '8state/statefulWidget01.dart';
// import "8state/datable02.dart";
// import "8state/inheritedWidget03.dart";
// import "8state/lifecycle04.dart";
// import "8state/provider05.dart";
// import '9navigation/anonymous01.dart';
// import '9navigation/namedRoute02.dart';
// import '9navigation/ongeneratedRoute03.dart';
// import '9navigation/arguments4.dart';
// import '9navigation/drawer5.dart';
// import "9navigation/bottomNavigatorbar06.dart";
// import '9navigation/tab7.dart';
// import '10form/switch1.dart';
// import '10form/checkbox2.dart';
// import '10form/radio03.dart';
import '10form/TextField4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: Home(),
      // routes: {
      //   'home': (context) => Home(),
      //   "product": (context) => Product(),
      //   'productDetail': (context) => ProductDetail()
      // },
      // onUnknownRoute: (RouteSettings setting) =>
      //     MaterialPageRoute(builder: (context) => UnknowPage()),
      // initialRoute: 'home',
      // onGenerateRoute: (RouteSettings setting) {
      //   print("当前路径${setting.name}");
      //   print(setting.name == "/product");
      //   if (setting.name == "/") {
      //     return MaterialPageRoute(builder: (context) => Home());
      //   } else if (setting.name == "/product") {
      //     return MaterialPageRoute(builder: (context) => Product());
      //   }
      //   var uri = Uri.parse(setting.name ?? "");
      //   if (uri.pathSegments.length == 2 &&
      //       uri.pathSegments.first == "product") {
      //     var id = uri.pathSegments[1];
      //     return MaterialPageRoute(
      //         builder: (context) => ProductDetail(
      //               id: id,
      //             ));
      //   }
      //   return MaterialPageRoute(builder: (context) => UnknowPage());
      // },

      theme: ThemeData(fontFamily: "NotoSans"),
      debugShowCheckedModeBanner: false,
    );
  }
}
