import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/CRUD%20Operation%20_Employee/Model/employeeModel.dart';
import 'package:fluttertoast/fluttertoast.dart';

TextEditingController idController = TextEditingController();
TextEditingController nameController = TextEditingController();
TextEditingController designationController = TextEditingController();
TextEditingController salaryController = TextEditingController();

class EmployeeController extends GetxController {
  RxList<EmployeeModel> empList = <EmployeeModel>[].obs;

  //todo Create Data
  void addEmployeeData(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          idController = TextEditingController();
          nameController = TextEditingController();
          designationController = TextEditingController();
          salaryController = TextEditingController();
          return AlertDialog(
            scrollable: true,
            backgroundColor: const Color(0xFF393E46),
            title: const Text(
                textAlign: TextAlign.center, 'Add New Employee Details'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildTextField(idController, TextInputType.number, 'ID'),
                const SizedBox(height: 12),
                buildTextField(nameController, TextInputType.text, 'Name'),
                const SizedBox(height: 12),
                buildTextField(
                    designationController, TextInputType.text, 'Designation'),
                const SizedBox(height: 12),
                buildTextField(
                    salaryController, TextInputType.number, 'Salary'),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    String msg = '';
                    if (idController.text != '' &&
                        nameController.text != '' &&
                        designationController.text != '' &&
                        salaryController.text != '') {
                      Map emp = {
                        'id': int.parse(idController.text),
                        'name': nameController.text.toString(),
                        'designation': designationController.text.toString(),
                        'salary': int.parse(salaryController.text)
                      };
                      empList.add(EmployeeModel.fromMap(emp));
                      msg = 'Details Added Successfully';
                      Get.back();
                    } else {
                      msg = 'All Field Must Be Required';
                    }
                    Fluttertoast.showToast(
                      msg: msg,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16,
                    );
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.blue),
                  )),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          );
        });
  }

  //todo Update Data
  void updateEmployeeData(BuildContext context, index) {
    showDialog(
        context: context,
        builder: (context) {
          idController.text = empList[index].id.toString();
          nameController.text = empList[index].name;
          designationController.text = empList[index].designation;
          salaryController.text = empList[index].salary.toString();
          return AlertDialog(
            scrollable: true,
            backgroundColor: const Color(0xFF393E46),
            title: const Text(
                textAlign: TextAlign.center, 'Edit Employee Details    '),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildTextField(idController, TextInputType.number, 'ID'),
                const SizedBox(height: 12),
                buildTextField(nameController, TextInputType.text, 'Name'),
                const SizedBox(height: 12),
                buildTextField(
                    designationController, TextInputType.text, 'Designation'),
                const SizedBox(height: 12),
                buildTextField(
                    salaryController, TextInputType.number, 'Salary'),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    String msg = '';
                    if (idController.text != '' &&
                        nameController.text != '' &&
                        designationController.text != '' &&
                        salaryController.text != '') {
                      Map emp = {
                        'id': int.parse(idController.text),
                        'name': nameController.text.toString(),
                        'designation': designationController.text.toString(),
                        'salary': int.parse(salaryController.text)
                      };
                      empList[index] = EmployeeModel.fromMap(emp);
                      msg = 'Details Update Successfully';
                      Get.back();
                    } else {
                      msg = 'All Field Must Be Required';
                    }
                    Fluttertoast.showToast(
                      msg: msg,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fontSize: 16,
                    );
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.blue),
                  )),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          );
        });
  }

  //todo Delete Data
  void deleteEmployeeData(BuildContext context, index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: const Color(0xFF393E46),
            title: const Text(
                'Are you sure you want to delete ?'),
            actions: [
              TextButton(
                  onPressed: () {
                    empList.removeAt(index);
                    Fluttertoast.showToast(
                      msg: 'Details Delete Successfully',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      textColor: Colors.white,
                      fontSize: 16,
                    );
                    Get.back();
                  },
                  child: Text(
                    'Delete',
                    style: TextStyle(color: Colors.blue.shade700),
                  )),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.blue.shade700),
                  ))
            ],
          );
        });
  }
}

TextField buildTextField(TextEditingController controller,
    TextInputType inputType, String hintText) {
  return TextField(
    keyboardType: inputType,
    controller: controller,
    cursorColor: Colors.white,
    decoration: InputDecoration(
      label: Text(
        hintText,
        style: TextStyle(color: Colors.white70),
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white70, width: 1)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white, width: 2)),
    ),
  );
}
