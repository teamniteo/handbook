# Git for Non-Developers

We use git for everything, including documentation and that means non-developers use it too. Since we're not that comfortable with it or using it daily, here's a short guide on the basics. Instructions are for MacOS.

### Install Git GUI

Open terminal and install the Git graphical user interface by running

`sudo apt-get install git-gui`

### Add Repository

Open terminal, open the local folder where you want the repository to be. 

Copy the link from GitHub repository Clone or Download green button.

`git clone [git_link]`

### Sync Repository

Go to root directory of the repository on localhost (cd ..). 

This command will discard any local changes.

`git checkout .`

then switch to master branch

`git checkout master`

and get the latest changes

`git pull`

### Create Branch

Name branch based on the changes you're making. 

`git checkout -b <branch_name>`

### Commit Changes

Once you've done the changes write

`git gui`

to open interface.

Select the files you want to commit and press CMD + T. Write the commit message.

Click button Commit. Click button Push. 

### Create Pull Request

Visit GitHub and click the button Compare & Pull Request.

## When All Else Fails

Contact a dev Nitean.
