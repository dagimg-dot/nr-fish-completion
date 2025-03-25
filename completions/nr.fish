function __fish_nr_complete_scripts
    if test -f package.json
        jq -r '.scripts | keys[]' package.json
    end
end

function __fish_nr_complete_scripts_with_d
    if test -f package.json
        jq -r '.scripts | to_entries[] | "\(.key)	\(.value)"' package.json
    end
end

complete -f -c nr -n "not __fish_seen_subcommand_from (__fish_nr_complete_scripts)" -a "(__fish_nr_complete_scripts_with_d)"
