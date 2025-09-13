function pyvenv
    set -l venv_name ".venv"
    if set -q argv[1]
        set venv_name $argv[1]
    end

    set -l venv_path "$PWD/$venv_name"
    set -l activate_script "$venv_path/bin/activate.fish"

    if test -f "$activate_script"
        source "$activate_script"
    else
        echo "Creating new virtual environment at $venv_path"
        python3 -m venv "$venv_path"
        source "$activate_script"
    end
end
