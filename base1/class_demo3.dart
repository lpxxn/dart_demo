/*
Every class implicitly defines an interface containing all the instance members of the class and of any interfaces it implements. If you want to create a class A that supports class B’s API without inheriting B’s implementation, class A should implement the B interface.

A class implements one or more interfaces by declaring them in an implements clause and then providing the APIs required by the interfaces. For example:


You use extend if you want to create a more specific version of a class. For example the class car could extend the class vehicle. In Dart a class can only extend one class.

Implements can be used if you want to create your own implementation of another class or interface. When class a implements class b. 
All functions defined in class b must be implemented.
When you're implementing another class, you do not inherit code from the class. You only inherit the type. In Dart you can use the implements keyword with multiple classes or interfaces.

Mixins are a way of reusing a class’s code in multiple class hierarchies.


*/
void main(List<String> args) {
  print(greetBob(Person('Kathy')));
  print(greetBob(Imposter()));
}

String greetBob(Person p) => p.greet('bob');

class Person {
  // In the interface, but visible only in this library.
  final _name;

  Person(this._name);
  String greet(String who) => 'hello, $who, I am $_name';
}


class Imposter implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}
