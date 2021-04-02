![](.common/joelstools.png?raw=true)

# Dropbox Ignore

Dropbox Ignore provides the dropbox ignore and sync commands as aliases for MacOS, Linux, and Windows: ***dropboxignore <path>***
and ***dropboxsync <path>***.

## Revision History

2021-04-02 - Joel Mussman

## License

This project and code is released under the MIT license. You may use and modify all or part of it as you choose, as long as attribution to the source is provided per the license. See the details in the [license file](./LICENSE.md) or at the [Open Source Initiative](https://opensource.org/licenses/MIT).

## Installation and Use

### Apple MacOS and Linux

Copy the contents of the .bashrc file to your personal .bashrc file.
This file supports Bash for both MacOS and Linux in the same script, but you can copy out just the aliases for your specific operating system if you choose.

From the command line use ***dropboxignore <path>*** to add an absolute path (directory or file) that should not be synced.
Use ***dropboxsync <path>*** with an absolute path to "un-ignore" it and resume syncing.

### Microsoft Windows

Copy the contents of the profile.ps1 file to your PowerShell profile.
You can check to see if you have a powershell profile set with ***$profile*** at the PowerShell command line.
If that returns false (there isn't a PowerShell profile), create a new one with ***New-Item -path $profile -type file -force***.

From the PowerShell command line use ***dropboxignore <path>*** to add an absolute path (directory or file) that should not be synced.
Use ***dropboxsync <path>*** with an absolute path to "un-ignore" it and resume syncing.

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