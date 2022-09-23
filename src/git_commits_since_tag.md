# Git: Show commits since a specific tag

For creating changelogs and get an overview over changes since a former release, I use `git log` to output every single commit. Given the expression `X..Y`, the commit `X` is excluded and the commit `Y` is included.

```bash
# changes from v0.1.0 to v0.2.0
git log v0.1.0..v0.2.0 --oneline

# changes from v0.2.0 to HEAD
git log v0.2.0..HEAD --oneline
```

**Note:** `HEAD` can be abbreviated to `@` here.

# References

- [Git Documentation](https://www.git-scm.com/docs/git-log)
- [Discussion on StackOverflow](https://stackoverflow.com/questions/8136178/git-log-between-tags)