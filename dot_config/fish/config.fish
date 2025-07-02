if status is-interactive
  source $HOME/.config/fish/aliases.fish
end

function fish_prompt
  echo (set_color blue)(prompt_pwd)(set_color normal)
  echo -n '$ '
end

source $HOME/.config/fish/env.fish

# functions
source $HOME/.config/fish/functions/zoxide.fish
