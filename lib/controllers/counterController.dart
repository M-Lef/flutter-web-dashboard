// ignore_for_file: file_names
import 'package:get/get.dart';

class CounterController extends GetxController{
  var counter = 0.obs;

  void increment(){
    counter++;
  }
}