if [ "`id -u`" -eq 0 ] && test -f  ~/.shell_profile
then
	. ~/.shell_profile
fi
		
source ~/.bashrc

#activar que et puguin enviar missatges
mesg y

