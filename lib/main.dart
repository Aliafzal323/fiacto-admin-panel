import 'package:dio_project/dio.dart';
import 'package:dio_project/firebase_options.dart';
import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // .then((_) {
  //   Get.put(());
  // });

  runApp(const MyApp());
}
