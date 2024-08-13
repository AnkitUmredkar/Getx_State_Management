<h1 align="center"> 🔶🔸Getx State Management🔸🔶 </h1>

- GetX is a popular state management solution for Flutter applications. It provides a simple and efficient way to manage the state of your application without the need for complex boilerplate code. GetX offers reactive state management, dependency injection, and route management, making it a comprehensive solution for developers.
## Key Features of Getx:

- **Reactive State Management** : GetX allows you to create reactive variables that automatically update the UI when their values change. This is achieved using `Rx` types, which can be easily observed and manipulated.
- **Dependency Injection** : GetX provides a powerful and easy-to-use dependency injection system. You can manage the lifecycle of your dependencies and ensure they are available where needed without cluttering your codebase.
- **Route Management** : GetX simplifies navigation in your Flutter app by offering a built-in routing system. This system allows you to manage routes, pass parameters, and handle route transitions seamlessly.
- **Performance** : GetX is designed to be lightweight and efficient. It minimizes the overhead associated with state management, ensuring that your app remains fast and responsive.

## Example : 

```bash
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}

class HomePage extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Counter'),
      ),
      body: Center(
        child: Obx(() => Text('Count: ${counterController.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
```

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸Counter App using Getx🔸🔶 </h1>

- ```This app shows how to create a counter app using getx and how to navigate from one page to another page.```

<h1 align="left"> </h1>

<div align="center">
  <img height="550" src="https://github.com/user-attachments/assets/ae1ef964-b64c-4ede-a5c9-3f4c81012d35"/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img height="550" src="https://github.com/user-attachments/assets/7b04a45f-6602-4303-9367-c985f89c7b2a"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src="https://github.com/user-attachments/assets/11ffb2da-2add-4966-a9a8-5ea6c5ad0751"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Getx_State_Management/tree/master/lib/Counter%20App">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸CRUD Operation For Employee Management System Using Getx 🔸🔶 </h1>

- This Flutter application implements a CRUD (Create, Read, Update, Delete) functionality for managing employee details using the GetX state management package.

1. **Create**: Add new employee data to a list managed by a GetX controller. Use `update()` to refresh the UI after adding the employee.

2. **Read**: Display the list of employees by observing the in-memory list with `Obx` or `GetBuilder` in the UI. The list is stored in the controller.

3. **Update**: Modify an employee's details directly in the list using a method in the controller. After updating, call `update()` to refresh the UI.

4. **Delete**: Remove an employee from the in-memory list through a controller method, then call `update()` to reflect the changes in the UI.

<div align="center">
  <img height="550" align="left" src="https://github.com/user-attachments/assets/2924d12b-0692-4e78-9a98-d2005a15000d"/>
  <img height="550" src="https://github.com/user-attachments/assets/f1f0cd5a-96af-4c05-8a24-e007371b0be1"/>
  <img height="550"  align="right" src="https://github.com/user-attachments/assets/46275b67-5cbf-4747-b7fe-2ef78cfb8b94"/>
</div>

<h1 align="left"> </h1>

<div align="center">
  <img height="550" align="left" src="https://github.com/user-attachments/assets/db242053-6656-49c0-b0f7-2a3df8917984"/>
  <img height="550" src="https://github.com/user-attachments/assets/aa787994-1307-46e3-9470-122e008d4858"/>
  <img height="550"  align="right" src="https://github.com/user-attachments/assets/adaaf4f5-6cd9-41a7-b986-9e2696ce423f"/>
</div>

<h1 align="left"> </h1>

<div align="center">
  <img height="550" src="https://github.com/user-attachments/assets/45f3f4ef-dfb2-4891-a88e-50551b8fcac2"/>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <img height="550" src="https://github.com/user-attachments/assets/17e1e6bd-51ed-4d61-a9eb-132e862c0295"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src="https://github.com/user-attachments/assets/b1cf54fd-5013-4400-9220-9666f1f1d769"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Getx_State_Management/tree/master/lib/CRUD%20Operation%20_Employee">-> 📂 Go To Dart File 📂<-</a>
</div>
