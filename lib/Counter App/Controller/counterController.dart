import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter = 0.obs;

  void add(){
    counter++;
  }

  void minus(){
    if(counter > 0){
      counter--;
    }
  }
}