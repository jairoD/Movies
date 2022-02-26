import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:movies_example/views/home/home.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const GetMaterialApp(home: Home()));
}
