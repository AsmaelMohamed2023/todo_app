import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/services/theme_services.dart';
import 'package:todo/ui/pages/add_task_page.dart';
import 'package:todo/ui/pages/notification_screen.dart';
import 'package:todo/ui/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            ThemeServices().switchTheme();
            Get.to(
                const NotificationScreen(payload: 'Title|descreption|10:30'));
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Center(
          child: MyButton(
              label: 'Add Task',
              onTap: () {
                Get.to(const AddTaskPage());
              })),
    );
  }
}
