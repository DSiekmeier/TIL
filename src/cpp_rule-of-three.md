# C++: Rule of three

If you do not provide a `copy assignement operator`, a `destructor` or a `copy constructor` in your class, the compiler will generate one for you. On the other side: if you do implement one of theese three on your own, you have to write the other two too. Optionally by using the `default` keyword.

The prototypes of this special functions are:

```c++
~X() = default;  // destructor
X(const X&) = default;  // copy assignement operator
X& operator=(const X&) = default;  // copy constructor
```

Using the `default` keyword is generally problematic if non-class types are managed by the class. Think of "shallow copies", which do only copy the pointer in the class but not the underlying resource. Pay attention to classes which have pointer attributes to resources.

# References

- [ccpreference.com](https://en.cppreference.com/w/cpp/language/rule_of_three)
- Breymann, U. (2018). Der C++-Programmierer (5. Aufl.). Hanser.
