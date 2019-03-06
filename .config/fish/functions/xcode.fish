function xcode -d "Open file by Xcode"
    set -l file $argv[1]
    set -l a_option $argv[2]
    set -l application $argv[3]

    if test -z $a_option
        set a_option -a
        set -l xcode_select_path (xcode-select -p)
        set application (string match -r "^.*Xcode[^/]*\.app" $xcode_select_path)
        if test -z $application
          set application Xcode
        end
    else if test $a_option != -a
        echo "Error: Option supports only '-a'"
        return 1
    else if test -z $application
        echo "Error: Need to specify Xcode when using -a option"
        return 1
    end

    set -l match_pattern (string match -r "Xcode" $application)
    if test -z $match_pattern
        echo "Error: Only applications containing 'Xcode' in name are supported"
        return 1
    end

    open $file $a_option $application
end
