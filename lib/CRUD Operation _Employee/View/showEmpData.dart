import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/CRUD%20Operation%20_Employee/Controller/employeeController.dart';

class ShowEmpData extends StatelessWidget {
  const ShowEmpData({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    EmployeeController employeeController = Get.put(EmployeeController());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF282B32),//backgroundColor: const Color(0xFF393E46),
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
          backgroundColor: Colors.teal,
          toolbarHeight: 70,
          centerTitle: true,
          elevation: 8.5,
          shadowColor: Colors.black,
          title: const Text(
            'Employee Details',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
        body: Obx(
          () => SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                ...List.generate(
                  employeeController.empList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.fromLTRB(10, 9, 10, 9),
                    child: Slidable(
                      startActionPane:
                          ActionPane(motion: const StretchMotion(), children: [
                        SlidableAction(
                          onPressed: (context) => employeeController
                              .updateEmployeeData(context, index),
                          backgroundColor: Colors.teal.shade800,
                          icon: Icons.edit,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: const StretchMotion(), children: [
                        SlidableAction(
                          onPressed: (context) => employeeController
                              .deleteEmployeeData(context, index),
                          backgroundColor: Colors.red,
                          icon: Icons.delete,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ]),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.black26),
                        child: ListTile(
                          leading: Text(
                            employeeController.empList[index].id.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          title: Text(
                            employeeController.empList[index].name,
                            style: const TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            employeeController.empList[index].designation,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: Text(
                            employeeController.empList[index].salary.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            employeeController.addEmployeeData(context);
          },
          child: Container(
              height: width * 0.19,
              width: width * 0.19,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.teal,
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: Offset(7.2, 7.2)),
                  ]),
              child: const Text(
                '+',
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
        ),
      ),
    );
  }
}
