import 'package:flutter/material.dart';
import 'package:ntfg/controllers/counterController.dart';
import 'package:get/get.dart';

class otherScreen extends StatelessWidget {

  final CounterController _counterController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("Screen was clicked ${_counterController.counter.value} times"),
        SizedBox(height: 10),
        Center(
          child : ElevatedButton(onPressed: () {
            Get.back();
          }, child: Text("Open Main Screen"))
        )
      ]
      ),
    );
  }
}
