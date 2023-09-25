import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/ui/pages/notification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme: ColorScheme.fromSwatch().copyWith(background: Colors.teal),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const NotificationScreen(payload: 'title| descr | 10:30 Pm'),
    );
  }
}
