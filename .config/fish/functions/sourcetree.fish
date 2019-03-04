function sourcetree -d "Open by Sourcetree"
    set -l file $argv[1]

    open $file -a Sourcetree
end
