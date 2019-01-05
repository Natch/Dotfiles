# Dotfiles
Deploy (Replace existing dotfiles to symbolic links)  
or  
Install / Update HomeBrew, then set up develop environment (e.g. anyenv)

## You need to install "Command Line Tools for Xcode" before
```bash
$ xcode-select --install
```

## Clone executable file (setup) and dotfiles from Rep
```bash
$ cd ~
$ git clone git@github.com:Natch/Dotfiles.git
```

## Do setup with argument 'deploy' for replacing existing dotfiles to symbolic links
Move target dotfiles to git management directory for dotfiles (e.g. ~/Dotfiles/) before.
```bash
$ ./setup deploy
```
## Do setup with argument 'initialize' for installing fomulaes and casks using HomeBrew.
```bash
$ ./setup initialize
```

