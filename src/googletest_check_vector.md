# GoogleTest: Check the content of std::vector

[GoogleTest](https://google.github.io/googletest/) is testing and mocking framework for C++ developed by Google. Formerly this two functionalities (testing and mocking) where seperated into two projects but do belong to each other nowerdays.

From the mocking part comes a whole toolset of so called [matchers](https://google.github.io/googletest/reference/matchers.html) which can be used even if you do not actually mock your code.

As an example for a matcher below is a snippet, which demonstrates the use of `ElementsAre` which lets you compare a given vector to some hardcoded values:

```cpp
#include <gmock/gmock.h>
#include <gtest/gtest.h>

using ::testing::_;
using ::testing::ElementsAre;
using ::testing::Matcher;

TEST(ParamStringBuilderTest, BuildEmptyParameterSet) {
  // arrange
  std::vector<int> content;

  // act
  content = foo();
  
  // assert
  ASSERT_THAT(content, ElementsAre(0x00, 0x01, 0x02,));
}
```

# References

- [Matchers Reference](https://google.github.io/googletest/reference/matchers.html#container-matchers)
- [Answer on Stackoverflow](https://stackoverflow.com/a/2797990)
