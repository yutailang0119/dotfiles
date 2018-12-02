function studio -d "Open file by Android Studio"
    set -l file $argv[1]
    set -l a_option $argv[2]
    set -l application $argv[3]

    if test -z $a_option
        set a_option -a
        set application 'Android Studio'
    else if test $a_option != -a
        echo "Error: Option supports only '-a'"
        return 1
    else if test -z $application
        echo "Error: Need to specify Android Studio when using -a option"
        return 1
    end

    set -l match_pattern (string match -nr 'Android Studio' $application)
    if test \( -z $match_pattern \) -o \( $match_pattern != '1 14' \)
        echo "Error: Only application with 'Android Studio' prefix are supported"
        return 1
    end

    open $file $a_option $application
end
