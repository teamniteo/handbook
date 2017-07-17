# Using Git for Non-Developers

Run terminal, type Git. Go to root directory of the repository on localhost (cd ..)

## 1. Sync Repository

```
git fetch -p
```

## 2. Create Branch
Name branch based on the changes you're making. Naming convention.

```
git checkout -B branch_name origin/master
```

## 3. Add or Change Files
Changes are automatically tracked but if you created new files, you need to add them:

```
git add .
```

If you do this make sure to deselect composer files in GitGui.

## 4. Check Status

```
git status
```

if OK:

```
git gui 
```

to open interface.

Select the files you want to commit and press CMD + T. Write the commit message.

Click button Commit. Click button Push. 

## 6. Create Pull Request

Visit GitHub and click the button Compare & pull request.

## Troubleshooting

TODO

git rebase -r and similar 
