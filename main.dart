// import 'dart:io';

// class Student {
//   String id;
//   String name;
//   int? age;
//   int grade;

//   Student({
//     required this.id,
//     this.name = '',
//     this.age,
//     required this.grade,
//   });

//   // Phương thức nhập thông tin sinh viên
//   static Student inputStudent() {
//     print('Nhập ID: ');
//     String id = stdin.readLineSync()!;
    
//     print('Nhập tên: ');
//     String name = stdin.readLineSync()!;
    
//     print('Nhập tuổi: ');
//     int age = int.parse(stdin.readLineSync()!);
    
//     print('Nhập lớp: ');
//     int grade = int.parse(stdin.readLineSync()!);

//     return Student(id: id, name: name, age: age, grade: grade);
//   }

//   // Phương thức hiển thị thông tin sinh viên
//   void displayInfo() {
//     print('ID: $id');
//     print('Tên: $name'); 
//     print('Tuổi: $age');
//     print('Lớp: $grade');
//     print('------------------------');
//   }
// }

// class StudentManager {
//   List<Student> students = [];

//   // Thêm sinh viên mới
//   void _addStudent() {
//     Student student = Student.inputStudent();
//     students.add(student);
//     print('Đã thêm sinh viên thành công!');
//   }

//   // Hiển thị danh sách sinh viên
//   void displayAllStudents() {
//     if (students.isEmpty) {
//       print('Danh sách sinh viên trống!');
//       return;
//     }
//     print('\nDanh sách sinh viên:');
//     for (var student in students) {
//       student.displayInfo();
//     }

//     //
//     students.forEach((student) => student.displayInfo());
//   }

//   // Tìm kiếm sinh viên theo ID
//   void findStudentById() {
//     print('Nhập ID sinh viên cần tìm: ');
//     String searchId = stdin.readLineSync()!;
    
//     try {
//       Student student = students.firstWhere((s) => s.id == searchId);
//       print('\nTìm thấy sinh viên:');
//       student.displayInfo();
//     } catch (e) {
//       print('Không tìm thấy sinh viên với ID: $searchId');
//     }
//   }
// }

// void main() {
//   var manager = StudentManager();
  
//   while (true) {
//     print('\n=== QUẢN LÝ SINH VIÊN ===');
//     print('1. Thêm sinh viên mới');
//     print('2. Hiển thị danh sách sinh viên');
//     print('3. Tìm kiếm sinh viên theo ID');
//     print('4. Thoát');
//     print('Nhập lựa chọn của bạn: ');
    
//     String? choice = stdin.readLineSync();
    
//     switch (choice) {
//       case '1':
//         manager._addStudent();
//         break;
//       case '2':
//         manager.displayAllStudents();
//         break;
//       case '3':
//         manager.findStudentById();
//         break;
//       case '4':
//         print('Tạm biệt!');
//         return;
//       default:
//         print('Lựa chọn không hợp lệ!');
//     }
//   }
// }


// class MathTest {
//   static int add(int a, int b) {
//     return a + b;
//   }
// }

// class AppConfig {
//   static String getBaseUrl() {
//     return 'https://rtyuio.com';
//   }
//   static final env = 'dev';
// }

void main () {
  BankAcc accNew = BankAcc(accNum: '000', balance: 100, ownName: 'Nguyen');
  accNew.deposit(10);
  accNew.checkBalance();
}

class BankAcc {
  String? accNum;
  String? ownName;
  double balance;

  BankAcc({this.accNum = '', this.balance = 0, this.ownName = ''});

  void deposit(double money) {
    balance += money;
  }
  void withDraw(double money) {
    balance -=money;
  }

  void checkBalance() {
    print('So du la $balance');
  }
}

