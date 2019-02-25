# ChristopherA's .dotfiles

***Cross-platform (Mac & Debian) dotfiles, using stow and .d style subdirectories***

My personal dotfiles and shell tools, refactored to use gnu `stow` and a `conf.d` like approach to `.bash_profile`, `.profile` and similar files.

This is my third-generation set of these dotfiles, optimized for use simultaneously with Apple MacOS High Sierra and for Debian Linux.
Long range goal is that they will also work most versions of Unix.

* 2018-02-24: Confirmed working with macOS High Sierra 10.14.3
* 2018-03-29: Confirmed working with macOS High Sierra 10.13.3
* 2018-02-20: Confirmed working for Debian Stretch

Always a work-in-progress, but usable.

## Install

```
cd ~
git clone --recurse-submodules git@github.com:ChristopherA/.dotfiles.git
cd .dotfiles
stow -R 0-shell
# If macOS
stow -R 0-macos
# if Debian
stow -R 0-shell-debian
```

## Previous Versions

* Dotfiles, managed by Stow (last revision early 2017): https://github.com/ChristopherA/dotfiles-stow/
* Dotfiles-old (last revision fall 2014): https://github.com/ChristopherA/dotfiles-old
