# Git for Non-Developers

We use git for everything, including documentation and that means non-developers use it too. Since we're not that comfortable with it or using it daily, here's a short guide on the basics. Instructions are for MacOS.

### Add Repository

Open terminal, open the local folder where you want the repository to be. 

Copy the link from GitHub repository Clone or Download green button.

`git clone [git_link]`

### Sync Repository

Run terminal, type git. Go to root directory of the repository on localhost (cd ..)

`git fetch -p`

### Create Branch

Name branch based on the changes you're making. 

`git checkout -B branch_name origin/master`

### Add or Change Files

Changes are automatically tracked but if you created new files, you need to add them:

`git add .`

If you do this make sure to deselect composer files in GitGui.

### Check Status

`git status`

if OK:

`git gui`

to open interface.

Select the files you want to commit and press CMD + T. Write the commit message.

Click button Commit. Click button Push. 

### Create Pull Request

Visit GitHub and click the button Compare & Pull Request.

### Troubleshooting

When you have to update local branch due to changes on master while you were working on a branch.

`git pull -r`

And force push.

## When All Else Fails

Contact a dev Nitean.
