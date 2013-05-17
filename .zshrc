# whats .zsh config file
#

# Load generic configuration files
for generic_config in ~/.shell.d/*[^~] ; do
  source $generic_config
done

# Load zsh configuration files
for zsh_config in ~/.zsh.d/*[^~] ; do
  source $zsh_config
done

