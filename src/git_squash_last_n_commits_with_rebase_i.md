# Git: Squash the last n commits using interactive rebase

I confess: when I wanted to squash the last *n* commits of a repository, for example the last two for fixing a type, then I did something like that:

```bash
git log --oneline -n 10
# -> manually copy the correct commit hash using the mouse and paste it to the next command
git rebase --interactive <commit>
```

Oh boy! :unamused: Fortunately there is shortcut for that:

```bash
git rebase -i HEAD~2
```

The `2` in this example means that the last two commits are shown in the configured rebase editor.

# References

- [Blog entry](http://www.binarywebpark.com/how-to-squash-your-last-2-git-commits/)
