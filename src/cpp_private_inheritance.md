# C++: Private inheritance

C++ allows to specify the type of inheritance by using the keywords `public`, `protected` and `private`. When using a private inheritance, the public methods of the base class can be used within a derived class. Instances of the derived class whoever are not allowed to use them. With other words, not the interface of the base class is derived, but the implementation of it.

Following a simple example to demonstrate this behaviour.

```c++
class Base {
  public:
    void foo(){};
};

class Derived : private Base {
  public:
    void bar() {
      // This is possible. Inside the derived class you
      // can call the public method of the base class
      foo();
    }
};

int main() {
  Derived d;
  // This call is not possible and will lead to a compiler
  // error. By using the private inheritance, objects of a
  // derived class cannot use the base class method.
  d.foo();
}

```
The visibility of a method from the base class can be "restored" when adding a statement of the form `using <Basis>::<Methode>` on top of the derived class:

```c++
class Base {
  public:
    void foo(){};
    void foo_visible(){};
};

class Derived : private Base {
  public:
    // This statement makes the interface of foo_visible
    // usable in object instances of the derived class.
    using Base::foo_visible;

    void bar() {
      // This is possible. Inside the derived class you
      // can call the public method of the base class
      foo();
    }
};

int main() {
  Derived d;
  // This call is not possible and will lead to a compiler
  // error. By using the private inheritance, objects of a
  // derived class cannot use the base class method.
  // d.foo();

  // Calling foo_visible() from the base class was explicitly
  // allowed by the using statement in Derived
  d.foo_visible();
}
```
# References

- Breymann, U. (2018). Der C++-Programmierer (5. Aufl.). Hanser.
