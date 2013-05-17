# whats .bashrc config file
#

# Load generic configuration files
for generic_config in ~/.shell.d/*[^~] ; do
	source $generic_config
done

# Load zsh configuration files
for bash_config in ~/.bash.d/*[^~] ; do
	source $bash_config
done



