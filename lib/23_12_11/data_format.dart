import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee({
    required this.name,
    required this.age,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'age': this.age,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> map) {
    return Employee(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }
}

class Department {
  String name;
  Employee leader;

  Department({
    required this.name,
    required this.leader,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': this.name,
      'leader': this.leader.toJson(),
    };
  }

  factory Department.fromJson(Map<String, dynamic> map) {
    return Department(
      name: map['name'] as String,
      leader: map['leader'] as Employee,
    );
  }
}

void main() {
  Employee leader1 = Employee(name: '홍길동', age: 41);

  Department department = Department(name: '총무부', leader: leader1);

  File file = File('company.txt');
  file.writeAsStringSync(jsonEncode(department.toJson()));

}