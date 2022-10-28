import 'package:flutter/material.dart';
import 'package:multi_provider_test/Home/Home.dart';
import 'package:multi_provider_test/Provider/Home_Provider.dart';
import 'package:multi_provider_test/Provider/Home_Slider_Provider2.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => HomeSliderProvider2()),
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
