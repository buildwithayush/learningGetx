import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/controller/home_screen_controller.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.put(HomeScreenController());
    return Scaffold(
      
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => NavigationBar(
        
          selectedIndex: controller.selectedIndex.value,
        
          onDestinationSelected: (value) {
        
            controller.selectedIndex.value = value;
            
          },
          destinations: [
        
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Maps'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Store'),
            
          ],
        ),
      ),
    );
  }
}
