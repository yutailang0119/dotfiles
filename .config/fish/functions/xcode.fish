function xcode -d "Open file by Xcode"
    set -l file $argv[1]
    set -l a_option $argv[2]
    set -l application $argv[3]

    if test -z $a_option
        set a_option -a
        set application Xcode
    else if test $a_option != -a
        echo "Error: Option supports only '-a'"
        return 1
    else if test -z $application
        echo "Error: Need to specify Xcode when using -a option"
        return 1
    end

    set -l match_pattern (string match -nr 'Xcode' $application)
    if test \( -z $match_pattern \) -o \( $match_pattern != '1 5' \)
        echo "Error: Only application with 'Xcode' prefix are supported"
        return 1
    end

    open $file $a_option $application
end
