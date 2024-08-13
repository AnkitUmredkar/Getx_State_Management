import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/counterController.dart';

class CounterMinusPage extends StatelessWidget {
  const CounterMinusPage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF282B32),
        appBar: AppBar(
          backgroundColor: Colors.indigo.shade700,
          toolbarHeight: 70,
          centerTitle: true,
          elevation: 8.5,
          shadowColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
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
                'Tap on button to Minus number',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 162),
                child: Obx(
                  () => Text(
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
                  counterController.minus();
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
                              color: Colors.indigoAccent,
                              spreadRadius: 0,
                              blurRadius: 8,
                              offset: Offset(6.5, 6.5)),
                        ]),
                    child: const Text(
                      '-',
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
