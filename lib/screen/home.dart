import 'package:flutter/material.dart';
import 'package:ntfg/controllers/counterController.dart';
import 'package:ntfg/screen/other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Clicks: ${counterController.counter.value}"),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(otherScreen());
                      },
                      child: Text("Open Main Screen")))
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
