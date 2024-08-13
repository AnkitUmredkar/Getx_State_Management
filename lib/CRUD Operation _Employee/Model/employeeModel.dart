class EmployeeModel {
  late int id, salary;
  late String name, designation;

  EmployeeModel(
      {required this.id,
      required this.name,
      required this.designation,
      required this.salary});

  factory EmployeeModel.fromMap(Map emp) {
    return EmployeeModel(
        id: emp['id'],
        name: emp['name'],
        designation: emp['designation'],
        salary: emp['salary']);
  }
}
