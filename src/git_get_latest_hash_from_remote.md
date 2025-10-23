# Git: Get the latest commit hash from a remote

Some time ago I had to find a way to get the latest commit hash from a branch of a remote Git repository. For those interested: I used this for updating the source revision in a [BitBake](https://docs.yoctoproject.org/bitbake/) recipe.

The `git ls-remote` command does the trick:

```bash
git ls-remote [<repository> [<patterns>…​]]
```

Simply speaking, with the `<patterns>` part of the command one can define a branch / several branches to filter the result. Because this pattern is included in the output as well (separated by a tab), I processed the output with `awk` which ends in the simple solution:

```bash
git ls-remote "$repo_url" "$branch" | awk '{print $1}'
```

# References

- [Git documentation](https://git-scm.com/docs/git-ls-remote.html) for `ls-remote`
- [awk documentation](https://www.gnu.org/software/gawk/manual/html_node/Print-Examples.html#print-Statement-Examples) for the `print` statement
