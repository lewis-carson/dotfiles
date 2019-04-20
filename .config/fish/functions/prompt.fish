function fish_prompt
    set -l last_status $status

    set -l red (set_color red)
    set -l green (set_color green)
    set -l normal (set_color normal)

    set home_text '\:\:'
    #set home_text "mao"
    set -l cwd $green(basename (pwd | sed "s:^$HOME:$home_text:"))

    if test $last_status = 0
        set prompt_color $normal
    else
        set prompt_color $red
    end

    printf "$cwd $normal"
    #printf "$prompt_color $normal"
end
