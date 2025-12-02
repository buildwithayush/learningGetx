import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final controller = Get.put(HomeScreenController());

    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            
            Obx(() {
              return Text(
                controller.counter.toString(),
                style: TextStyle(fontSize: 40),
              );
            }),

            ElevatedButton(
              onPressed: () {
                controller.counter++;
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
