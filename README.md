![](.common/joelstools.png?raw=true)

# Dropbox Ignore

Dropbox Ignore simplifies the dropbox ignore and sync commands as command-line functions for MacOS, Linux, and Windows: ***dropboxignore <path>***
and ***dropboxsync <path>***.

Many folks in the developer world have wished for years that DropBox would add patterns like Git uses to ignore syncing files.
There are some reasons they do not believe this is a good idea, among them that less technical folk might "break"
syncing if they renamed a file and it no longer matched a pattern.

In the spring of 2020 Dropbox finally introduced adding a metadata attribute on files and directories (only looked at by them) that will block a file from syncing.
The good part for them: the attribute stays with the file even if you change the name or move it.
The bad part for us: you have to do this for each file or directory.

My personal development flow includes developing my projects in a folder that is synced to DropBox and synced to a Git repository.
For my flow I use Git when it is appropriate to update the repository at milestones in my project.
I depend on the automatic synching of DropBox to backup my work in progress up to the minute: in case my computer fails, is stolen, or
since I travel a lot unexpectedly seized at a border crossing (it happens).

As a developer I find that while there are a lot of things I don't sync to Git, like IDE settings,
there is actually a lot less that I don't wanted synced to DropBox.
Specifically it is just dependency and build folders, especially the former as dependencies can easily reach hundreds of megabytes.

I simply adapted my flow by making sure that I either create empty dependency and build folders when I set up the project,
and have DropBox ignore these folders as soon as possible before a lot gets synced to DropBox.
Think ignoring node_modules before you run "npm install".
So, I personally find it faster just to use these aliases I built at the command line to do this.

If you are looking for a UI solution to use your mouse ignore multiple files at the same time, they do exist.
For example, Boz Bundalo has a great post on Medium to add setting and clearing these attributes
to the MacOS Finder using the Automater: https://medium.com/@bozzified/dropbox-ignore-solving-ignoring-node-modules-and-other-folders-from-syncing-on-a-mac-ae5fa44543e8.

Good luck to you!

## Revision History

2021-04-02 - Joel Mussman

## License

This project and code is released under the MIT license. You may use and modify all or part of it as you choose, as long as attribution to the source is provided per the license. See the details in the [license file](./LICENSE.md) or at the [Open Source Initiative](https://opensource.org/licenses/MIT).

## Installation and Use

### Apple MacOS and Linux

Copy the contents of the .bashrc file to the startup file of your choice; usually .bashrc or .zshrc if you use Z shell.
This is not the appropriate venue to discuss startup files, but .bashrc and .zshrc normally run for interactive shells.
This file supports Bash and Z shell for both MacOS and Linux in the same script, but you can copy out just the functions for your specific operating system if you choose.

From the command line use ***dropboxignore <path>*** to add one or more file paths (directory or file) that should not be synced.
Use ***dropboxsync <path>*** with file paths to "un-ignore" them and resume syncing.

### Microsoft Windows

Copy the contents of the profile.ps1 file to your PowerShell profile.
The PowerShell variable contains the path to the profile; if it does not exist you will
need to execute a command to build it.
This conditional statement from Microsoft's documentation will add a profile if the file does not exist:

    if (!(Test-Path -Path $PROFILE)) {
        New-Item -ItemType File -Path $PROFILE -Force
    }

The $profile variable defines the path to your personal file, even if the file doesn't exist.

After setting the profile from the PowerShell command line use ***dropboxignore <path>*** to add one or more file paths (directories or files) that should not be synced.
Use ***dropboxsync <path>*** with files paths to "un-ignore" them and resume syncing.

## Support

Since I give this away for free, and if you would like to keep seeing more things like this, then please consider
a contribution to *Joel's Coffee Fund* at **Smallrock Internet** to help keep the good stuff coming :)<br />

[![Donate](.common/Donate-Paypal.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=XPUGVGZZ8RUAA)

## Contributing

We are always looking for ways to make the template better. But remember: Keep it simple. Keep it minimal. Don't add every single feature just because you can, add a feature when a feature is required.

## Authors and Acknowledgments

* Joel Mussman

The Joel's Tools logo was inspired by an image found at https://www.pngwing.com/.

<hr>
Copyright © 2021 Joel Mussman. All rights reserved.