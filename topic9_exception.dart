import 'dart:ffi';

//   try {
//    // code that might throw an exception
// }
// on Exception1 {
//    // code for handling exception
// }
// catch Exception2 {
//    // code for handling exception
// }

//  int x = 12;
//    int y = 0;
//    int res;

//    try {
//       res = x ~/ y;
//    }
//    on IntegerDivisionByZeroException {
//       print('Cannot divide by zero');
//    }

//   int x = 12;
//    int y = 0;
//    int res;

//    try {
//       res = x ~/ y;
//    }
//    catch(e) {
//       print(e);
//    }

//    int x = 12;
//    int y = 0;
//    int res;

//    try {
//       res = x ~/ y;
//    }
//    on IntegerDivisionByZeroException catch(e) {
//       print(e);
//    }

//   try {
//    // code that might throw an exception
// }
// on Exception1 {
//    // exception handling code
// }
// catch Exception2 {
//    //  exception handling
// }
// finally {
//    // code that should always execute; irrespective of the exception
// }

// int x = 12;
//    int y = 0;
//    int res;

//    try {
//       res = x ~/ y;
//    }
//    on IntegerDivisionByZeroException {
//       print('Cannot divide by zero');
//    }
//    finally {
//       print('Finally block executed');
//    }

//    try {
//       test_age(-2);
//    }
//    catch(e) {
//       print('Age cannot be negative');
//    }
// }
// void test_age(int age) {
//    if(age<0) {
//       throw new FormatException();
//    }

//1)
// void test_age(int age) {
//   if (age < 18) {
//     throw new FormatException();
//   } else {
//     print("pass $age");
//   }
// }

// List a = [12, 34, 2, 56, 76, 43, 12, 34, 11];
// for (int i = 0; i < a.length; i++) {
//   int b = a[i];
//   try {
//     test_age(a[i]);
//   } catch (e) {
//     print('You are teenager yeat $b');
//   }
// }

//2)
// void test_age(String age) {
//   if (age != "8 775 185 6016") {
//     throw new FormatException();
//   } else {
//     print("simular");
//   }
// }
// String age = "8 775 185 6015";
// try {
//   test_age(age);
// } catch (e) {
//   print('Not simular');
// }

class CustomException implements Exception {
  final String message;

  CustomException(this.message);

  @override
  String toString() {
    return message;
  }
}

void main() {
  try {
    checkAge(17); 
    checkPhoneNumber(
        "1234567890"); 
    checkEmail(
        "user@example.com"); 
    checkAdminEmail(
        "admin@example.com"); 
  } catch (e) {
    print(e);
  } finally {
    print('Operation completed.');
  }
}

void checkAge(int age) {
  if (age <= 18) {
    throw CustomException("You are a teenager.");
  }
}

void checkPhoneNumber(String phoneNumber) {
  if (phoneNumber.isEmpty) {
    throw CustomException("Invalid phone number.");
  }
}

void checkEmail(String email) {
  if (email.isEmpty) {
    throw CustomException("Invalid email address.");
  }
}

void checkAdminEmail(String email) {
  if (email != "admin@example.com") {
    throw CustomException("No access.");
  }
}
