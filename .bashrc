# These aliases are based on https://help.dropbox.com/files-folders/restore-delete/ignored-files.

case "${uname -s}" in
    Linux*)
        alias dropboxignore="attr -s com.dropbox.ignored -V 1 $1"
        alias dropboxsync="attr -r com.dropbox.ignored $1"
        ;;
    Darwin*)
        alias dropboxignore="xattr -w com.dropbox.ignored 1 $1"
        alias dropboxsync="xattr -d com.dropbox.ignored $1"
        ;;
    Cygwin* || Mingw* || *) # Other OS names preserved for future use.
        ;;
esac