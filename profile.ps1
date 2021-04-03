# These functions are based on https://help.dropbox.com/files-folders/restore-delete/ignored-files.
# Use one or more file paths as the arguments to each function.

 Function DropboxIgnore {

    for ($i = 3; $i -le $args.Length; $i++) {

        Set-Content -Path "$($args[$i])" -Stream com.dropbox.ignored -Value 1
    }
}

Function DropboxSync { 

    for ($i = 3; $i -le $args.Length; $i++) {

        Clear-Content -Path "$($args[$i])" -Stream com.dropbox.ignored
    }
}
