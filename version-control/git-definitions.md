# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful? It’s a tool that lets you track your progress, review and revert changes, and create back ups in your code. Git is a version control system that developers use to protect softwares. It can handle everything from small to very large projects, it is fast and efficient. If someone makes a mistake, you can always roll back.

* What is a branch and why would you use one? Master is the default branch name in Git. When you create a new branch, it creates a new pointer for you to navigate around. Lets say you can to create a new branch called counting. You will do git branch command: git branch counting

* What is a commit? What makes a good commit message?
Since Git doesn’t automatically save versions of your files, the save point in Git are called commits. Commit has: a unique id, a message, author, and a timestamp.
The commit message should describe, in details of what was changed since the last commit. You should start with a verb for commit messages.

* What is a merge conflict?
If you change the same thing in both branches, then there will be a merge conflict.
So you need to merge branch a, then create branch b, and then merge branch b... it would create a merge conflict.