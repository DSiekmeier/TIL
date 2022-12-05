# Linux CLI: Convert spaces to tabs and vice versa

Almost ever I use spaces instead of tabs for my files, especially source code files. But in rare cases this leads to problems: Makefiles for [GNU make](https://www.gnu.org/software/make/manual/make.html)! Fortunately there is a commandline tool for converting the spaces to tabs (although every graphical I know can do this too).

Given a source file `main.cc` and a makefile `Makefile` converting from spaces to tabs can be done with the following command:

```bash
unexpand --first-only -t 4 Makefile > Makefile.new
``` 

The output can be checked for example using `cat` which shows tabs as `^I` on the standard output:

```bash
cat --show-tabs Makefile.new
```

`unexpand` does not convert in space, but writes its output to the standard output. Therefore in the example above the converted file is written with `> Makefile.new`. You might have to adjust the parameter `-t 4` to match the number of spaces per tab.

There is a complement which is called `expand` and which can be used to convert tabs to spaces. Example:

```bash
expand -i -t 4 Makefile.new > Makefile
```

# References

- [Linux manual page for *unexpand*](https://man7.org/linux/man-pages/man1/unexpand.1.html)
- [Linux manual page for *expand*](https://man7.org/linux/man-pages/man1/expand.1.html)
