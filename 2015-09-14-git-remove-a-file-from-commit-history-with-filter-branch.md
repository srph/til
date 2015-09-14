---
title: Git: Remove a file from commit history with `filter-branch`
---

```bash
git filter-branch --tree-filter 'rm -f DVD-rip' HEAD
```

Change `DVD-rip` to your directory / filename.

> The `--tree-filter` option runs the specified command after each checkout of the project and then recommits the results. In this case, you remove a file called DVD-rip from every snapshot, whether it exists or not.

**References**:
- [**How to remove/delete a large file from commit history in Git repository?** | Stack Overflow](http://stackoverflow.com/questions/2100907/how-to-remove-delete-a-large-file-from-commit-history-in-git-repository)
