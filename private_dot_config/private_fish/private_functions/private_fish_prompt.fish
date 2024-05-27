function fish_prompt
    set_color $fish_color_cwd
    echo -n (string replace -r "^$HOME" "~" $PWD)
    set_color white
    echo ':'
    echo -n ' > '
end
