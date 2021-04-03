# These aliases are based on https://help.dropbox.com/files-folders/restore-delete/ignored-files.
# Use one or more file paths as the arguments to each alias.

case "$(uname -s)" in
    Linux*)
        alias dropboxignore() { for p in ${@:2}; do attr -s com.dropbox.ignored -V 1 $p; done }
        alias dropboxsync() { for p in ${@:2}; do attr -r com.dropbox.ignored $p; done }
        ;;
    Darwin*)
        alias dropboxignore() { for p in ${@:2}; do xattr -w com.dropbox.ignored 1 $p; done }
        alias dropboxsync() { for p in ${@:2}; do xattr -d com.dropbox.ignored $p; done }
        ;;
    Cygwin* || Mingw* || *) # Other OS names preserved for future use.
        ;;
esac