import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/controller/home_screen_controller.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());
    
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body:ListView.separated(
       separatorBuilder: (context, index) => const SizedBox(),
      itemCount: 10,
      itemBuilder: (context, index){
        return Text('1212');
      },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.showBottomSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
    
  }
}
