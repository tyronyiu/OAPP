![screenshot1](https://i.ibb.co/pPbMwKb/Screenshot-2020-03-18-at-21-32-17.png)
![screenshot2](https://i.ibb.co/18VH8SH/Screenshot-2020-03-18-at-21-32-46.png)

## Introduction
`MacOs Dmenu application launcher`

*Built upon Keuze, the universal fuzzy selector for macOs comparable with dmenu.*

This is a small application that is designed to offer an alternative interface
to quickly opening apps to spotlight. A Dmenu alternative wasn't really
available, but I found this amazing small, in swift written code, "Keuze", that
provides a solid workaround!

This specific script is only an application launcher, but with *keuze*, a lot
more is possible, as it accepts text via *stdin* and can pipe a user choice via
*stdout*.

This app is best paired with [SKHD](https://github.com/koekeishiya/skhd), a
hotkey daemon, that lets you access your scripts with a simple shortcut, instead
of launching from the dock or spotlight.

## Installation
Simply download the MacOs App, you can double click it and it should run
immediately. 
All dependencies should be installed automatically by the script on first use.

### Dependencies
`All dependencies should be installed automatically by the script on first use.`
- [Keuze](https://github.com/JodusNodus/keuze)

## Usage
When launching the app, a floating window opens with a list of all installed
apps on the system in `/System/bin` and `User/Applications/`. The window lets
you type the name of an app and offers fuzzy-find ruled suggestions. When
pressing return, the chosen app launches.

### Suggestions
I personally have this script exectuable via the `CMD + O`, shortcut (o=open),
exposed via skhd, this is a very powerful tool. In comparison to spotlight, not
all included files need to be indexed and thus this program runs a lot faster.
In classic UNIX fashion, it does one thing and one thing well.

There is a MacOs exectuable `.APP` in the repo, as well as the shell script
behind that `.APP`. Also, because *keuze* is nowhere to be found pre-compiled,
I've provided a pre-compiled version of `Keuze` as well. 
