import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fetch_data/controller_bindings.dart';
import 'package:getx_fetch_data/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      home: HomePage(),
    );
  }
}
