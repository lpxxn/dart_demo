main() {
  var p = new Person(13, '张三');
  // p.name = '张三';
  // p.age = 10;
  p.printInfo();

  var w1 = new Worker('李', 3, 9);
  w1.printInfo();

  var w2 = new Worker.fromJson({});
  w2.printInfo();

  var w3 = new Student("s1", 1);
  w3.eat();
  w3.sleep();
  w3.nameValue = '"a';
  print(w3.nameValue);
}

class Person {
  int age;
  String name;

  String get nameValue => 'name: ' + name;
  set nameValue(String n) => name = name + n;

  // Person(int age, String name) {
  //   this.age = age;
  //   this.name = name;
  // }
  Person(this.age, this.name);

  // 这种不能有 body {}
  Person.defaultPerson() : this(0, "defaultName");

  void printInfo() {
    print('name: $name age: $age');
  }

  Person.fromJson(Map data) {
    print('fromJson in Person');
    this.name = "default";
    this.age = 0;
  }
}

// Use extends to create a subclass, and super to refer to the superclass:
class Worker extends Person {
  int salary;
  Worker(String name, int age, int salary) : super(age, name) {
    this.salary = salary;
  }

  /*
  Subclasses can override instance methods, getters, and setters. You can use the @override annotation to indicate that you are intentionally overriding a member:
  */
  @override
  void printInfo() {
    super.printInfo();
    print("worker" + this.salary.toString());
  }

  @override
  Worker.fromJson(Map data) : super.fromJson(data) {
    print('fromJson in Worker');
  }
}

class Point {
  num x, y;

  Point(this.x, this.y);

  // Named constructor
  Point.origin() {
    x = 0;
    y = 0;
  }
}

// 多继承
class Eat {
  void eat() {
    print("eat");
  }
}

class Sleep {
  void sleep() {
    print("sleep");
  }
}

//If an identifier starts with an underscore (_)
class Person2 {
  String _name;
  int age;

  Person2() {}
  Person2.fromValue(this._name, this.age);

  // Named constructor
  Person2.origin() {
    _name = 0.toString();
    age = 0;
  }
}

class Student extends Person with Eat, Sleep {
  Student(String name, int age) : super(age, name) {}
}
