import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/counterController.dart';
import 'counterMinusPage.dart';

class CounterAddPage extends StatelessWidget {
  const CounterAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF393E46),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          toolbarHeight: 70,
          centerTitle: true,
          elevation: 8.5,
          shadowColor: Colors.black,
          actions: [
            IconButton(onPressed: (){
              Get.to(const CounterMinusPage(),transition: Transition.leftToRight);
            }, icon: Icon(Icons.keyboard_double_arrow_right,color: Colors.white,size: 38,))
          ],
          title: const Text(
            'Counter App',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 25),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tap on button to Add number',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 162),
                child: Obx(
                  () =>  Text(
                    '${counterController.counter}',
                    style: const TextStyle(
                        fontSize: 57,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  counterController.add();
                },
                child: Container(
                    height: 80,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.teal,
                              spreadRadius: 0,
                              blurRadius: 8,
                              offset: Offset(10, 10)),
                        ]),
                    child: const Text(
                      '+',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
