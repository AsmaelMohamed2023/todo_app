import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/ui/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, required this.payload}) : super(key: key);
  final String payload;
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  String _payload = '';
  @override
  void initState() {
    super.initState();
    _payload = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        backgroundColor: context.theme.colorScheme.background,
        title: Text(
          _payload.toString().split('|')[0],
          style: TextStyle(color: Get.isDarkMode ? Colors.white : darkGreyClr),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text(
                    'Hello, Asmael',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                      color: Get.isDarkMode ? Colors.white : darkGreyClr,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'You have a new reminder',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Get.isDarkMode ? Colors.grey[100] : darkGreyClr,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: primaryClr,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.text_format,
                            size: 30,
                          ),
                          SizedBox(width: 20),
                          Text(
                            'Title',
                            style: TextStyle(color: white, fontSize: 30),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _payload.toString().split('|')[0],
                        style: const TextStyle(color: white, fontSize: 25),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.description, size: 30),
                          SizedBox(width: 20),
                          Text(
                            'Description',
                            style: TextStyle(color: white, fontSize: 30),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _payload.toString().split('|')[1],
                        style: const TextStyle(color: white, fontSize: 25),
                      ),
                      const SizedBox(height: 20),
                      const Row(
                        children: [
                          Icon(Icons.calendar_today_outlined, size: 30),
                          SizedBox(width: 20),
                          Text(
                            'Date',
                            style: TextStyle(color: white, fontSize: 30),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        _payload.toString().split('|')[2],
                        style: const TextStyle(color: white, fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
