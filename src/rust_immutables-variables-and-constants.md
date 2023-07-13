# Rust: Immutable variables and constants

In the Rust programming language variables are immutable by default, meaning you can not change the containing value once you assigned it:

```rust
fn main() {
    let number = 42;
    println!("{number}");

    number = 41 + 1; // error
}
```

This code leads to the compiler error `error[E0384]: cannot assign twice to immutable variable`.

Rust also knows constants you can not change and which are defined using the `const` keyword, for example: 

```rust
const PI: f64 = 3.1415;
```

Beside this similarity there are some differences to immutable variables:

1. Constants can not made mutable by using the `mut` keyword. The immutability is not just a default as it is for variables.
2.	Constants always need a type annotation, meaning the datatype cannot be derived by the compiler automatically.
3.	Constants can be declared in any scope, for example in a global scope outside a function.
4.	Constants can only be set to a constant expression, meaning the expression on the right side of the assignment is not allowed to contain a variable which is calculated at runtime.
5. There is a convention, saying that constants should be named all uppercase with underscores between words.

# References

- [The Rust Programming Language](https://doc.rust-lang.org/book/ch03-01-variables-and-mutability.html#constants)
- [Constant evaluation](https://doc.rust-lang.org/reference/const_eval.html#constant-evaluation)
- [Naming conventions](https://rust-lang.github.io/api-guidelines/naming.html#casing-conforms-to-rfc-430-c-case)