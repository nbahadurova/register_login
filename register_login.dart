import 'dart:io';
void main() {
  Map<String, String> users = {};

  while (true) {
    print("1:Register");
    print("2:Login");
    print('select 1 or 2');
    String choice = stdin.readLineSync() ?? '';

    if (choice == '1') {
      print('Enter your username:');
      String username = stdin.readLineSync() ?? '';

      if (users.containsKey(username)) {
        print("Username already exists. Please choose a different username.");
      } else {
        print('Enter your password:');
        String password = stdin.readLineSync() ?? '';
        users[username] = password;
        print("Registration successful!");
      }
    } else if (choice == '2') {
      print('Enter your username:');
      String username = stdin.readLineSync() ?? '';

      if (users.containsKey(username)) {
        print('Enter your password:');
        String password = stdin.readLineSync() ?? '';

        if (users[username] == password) {
          print("Login successful!");
          return;
        } 
        else {
          print("Incorrect password. Please try again.");
        }
      } else {
        print("Username not found. Please register first.");
      }
    } 
     else {
      print("Invalid option. Please try again.");
    }
  }
}
