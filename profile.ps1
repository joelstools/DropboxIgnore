# These functions are based on https://help.dropbox.com/files-folders/restore-delete/ignored-files.
# Use an absolute path as the argument to each function.

Function DropboxIgnore { Set-Content -Path "$($args[0])" -Stream com.dropbox.ignored -Value 1 }
Function DropboxSync { Clear-Content -Path "$($args[0])" -Stream com.dropbox.ignored }