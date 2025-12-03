import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearn/screens/home.dart';
import 'package:getxlearn/screens/maps_screen.dart';
import 'package:getxlearn/screens/store_screen.dart';

class HomeScreenController extends GetxController {
  
   RxInt selectedIndex = 0.obs;
   List<Widget> screens = [const Home(),const MapsScreen(),const StoreScreen()];
}
