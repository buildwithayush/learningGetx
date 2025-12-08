import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController get instance => Get.find();

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  RxList data = [
    {"title": "title 1", "description": "description 1"},
    {"title": "title 2", "description": "description 2"},
    {"title": "title 3", "description": "description 3"},
    {"title": "title 4", "description": "description 4"},
    {"title": "title 5", "description": "description 5"},
  ].obs;

  Future<void> addData() async {
    await showModalBottomSheet(
      context: Get.context!,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  hintText: 'Enter title',
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1.2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  ),
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: descriptionController,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter description...',
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 18,
                    horizontal: 16,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1.2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 1.5),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(onPressed: () {}, child: Text('Add')),
            ],
          ),
        );
      },
    );
  }
}
