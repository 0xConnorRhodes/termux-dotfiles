function sage
    set -l secret_dir "$HOME/.local/.secret"
    set -l secret_file "$secret_dir/age-termux-key.txt"

    if not test -d "$secret_dir"
        mkdir -p "$secret_dir"
    end

    read -P "termux age key: " secret_input

    echo "$secret_input" > "$secret_file"
    chezmoi apply
end
