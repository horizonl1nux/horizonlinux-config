#tg:xd_sergii | config ><>
#    -- _     _ 
#   / _(_)___| |__
#  | |_| / __| '_ \
#  |  _| \__ \ | | |
#  |_| |_|___/_| |_|

set fish_greeting
fish_vi_key_bindings

#fish-fzf | install with yay (archlinux)
set -g FZF_DEFAULT_COMMAND 'fd --type f'
set -g FZF_CTRL_T_COMMAND 'fd --type f'
fzf_key_bindings
set -g FZF_CTRl_R_OPTS "--height 40% --border --reverse"

#zoxide
zoxide init fish | source

#DISABLE [I]  /\  [I] ><> 
function fish_mode_prompt
  switch "$fish_bind_mode"
    case "default"
	end
# Remove the bottom line if you don't want a space at the beginning! 
	echo -n " "
end
	 # ><>
	function fish_prompt	
	echo -n (set_color efcf40)">"
	echo -n	(set_color ef9540)"<"
	echo -n (set_color ea3838)">"
	echo -n " "
end

set -U fish_user_paths "$HOME/.local/bin"
