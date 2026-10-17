
class BankAccount {
  double _balance;

  BankAccount(this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: $amount');
    } else {
      print('Invalid deposit amount');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Invalid withdrawal amount');
    } else if (amount > _balance) {
      print('Insufficient balance');
    } else {
      _balance -= amount;
      print('Withdrawn: $amount');
    }
  }

  double getBalance() {
    return _balance;
  }
}



class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void displayInfo() {
    print('Name: $name');
    print('Salary: $salary');
  }

  void work() {
    print('Employee is working.');
  }
}

class Developer extends Employee {
  String programmingLanguage;

  Developer(String name, double salary, this.programmingLanguage)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Programming Language: $programmingLanguage');
  }

  @override
  void work() {
    print('Developer is writing code.');
  }
}

class Designer extends Employee {
  String designTool;

  Designer(String name, double salary, this.designTool)
      : super(name, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Design Tool: $designTool');
  }

  @override
  void work() {
    print('Designer is creating designs.');
  }
}



class Animal {
  void makeSound() {
    print('Animal makes a sound.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof! Woof!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow! Meow!');
  }
}

class Cow extends Animal {
  @override
  void makeSound() {
    print('Moo! Moo!');
  }
}



abstract class Payment {
  void pay(double amount);
}

class CashPayment implements Payment {
  @override
  void pay(double amount) {
    if (amount > 0) {
      print('Cash payment processed: $amount');
    } else {
      print('Invalid payment amount');
    }
  }
}

class CreditCardPayment implements Payment {
  @override
  void pay(double amount) {
    if (amount > 0) {
      print('Credit card charged: $amount');
    } else {
      print('Invalid payment amount');
    }
  }
}

class PayPalPayment implements Payment {
  @override
  void pay(double amount) {
    if (amount > 0) {
      print('PayPal checkout completed: $amount');
    } else {
      print('Invalid payment amount');
    }
  }
}

void main() {
  
  print('===== QUESTION 1: BANK ACCOUNT =====');

  BankAccount account = BankAccount(1000);

  print('Initial Balance: ${account.balance}');

  account.deposit(500);
  print('Current Balance: ${account.getBalance()}');

  account.withdraw(200);
  print('Current Balance: ${account.balance}');

  account.withdraw(2000);
  print('Current Balance: ${account.balance}');

  account.deposit(-100);
  account.withdraw(-50);

  
  print('\n===== QUESTION 2: EMPLOYEES =====');

  Developer developer = Developer('Ahmed', 12000, 'Dart');
  Designer designer = Designer('Mona', 10000, 'Figma');

  print('\n--- Developer Information ---');
  developer.displayInfo();

  print('\n--- Designer Information ---');
  designer.displayInfo();

 
  print('\n===== QUESTION 3: METHOD OVERRIDING =====');

  developer.work();
  designer.work();

  // Question 4: Polymorphism - Animal Sounds
  print('\n===== QUESTION 4: ANIMAL SOUNDS =====');

  List<Animal> animals = [Dog(), Cat(), Cow()];

  for (Animal animal in animals) {
    animal.makeSound();
  }

  
  print('\n===== QUESTION 5: PAYMENT SYSTEM =====');

  Payment cash = CashPayment();
  Payment creditCard = CreditCardPayment();
  Payment paypal = PayPalPayment();

  cash.pay(500);
  creditCard.pay(1000);
  paypal.pay(750);

  // Test invalid payment
  cash.pay(-100);
}
