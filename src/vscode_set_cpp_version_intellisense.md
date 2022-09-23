# Visual Studio Code: Set C++ version for IntelliSense

I often use Microsoft [Visual Studio Code](https://code.visualstudio.com/) for programming in C++, especially when I quickly want to test some small snippets of new code. I always use the standard C++17 or above, which sometimes leads to "error squiggles" in the editor. Lately when I used the `std::byte` datatype.

To get rid of this, one have to configure IntelliSense to "know" the respective language keywords. You can do it like following:

1. Open the command palette by pressing `STRG+Shift+P`
2. Type and confirm `C++ edit json`
3. In the file `c_cpp_properties.json` set the entry `cppStandard` to c++17 (or whatever fits your needs)

The setting can also be changed by using the UI of the settings editor. Use the search string `C++ edit ui` in step 2 above.

**Note:** this setting does not effect the actual build of the project.

# References

- [c_cpp_properties.json reference](https://code.visualstudio.com/docs/cpp/c-cpp-properties-schema-reference)
