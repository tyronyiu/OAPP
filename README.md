## Introduction
`MacOs Dmenu application launcher`

This is a small application that is designed to offer an alternative interface
to quickly opening apps to spotlight. A Dmenu alternative wasn't really
available, but I found this amazing small, in swift written code, "Keuze", that
provides a solid workaround!

## Installation
Simply download the MacOs App, you can double click it and it should run
immediately. 

**Missing dependencies may need to be installed before first use and may require
an internet connection.**

## Usage
When launching the app, a floating window opens with a list of all installed
apps on the system in `/System/bin` and `User/Applications/`. The window lets
you type the name of an app and offers fuzzy-find ruled suggestions. When
pressing return, the chosen app launches.

There is a MacOs exectuable `.APP` in the repo, as well as the shell script
behind that `.APP`. Also, because *keuze* is nowhere to be found pre-compiled,
I've provided a pre-compiled version of `Keuze` as well. 
