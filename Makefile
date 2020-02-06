all:
	@echo "Run:\n\tsudo make install\t--copies the config files to the correct location\n\tsudo make refresh\t--copy your local config files to this repo.\n"

help: all
refresh:
	cp ${HOME}/.config/i3/config i3/
	cp ${HOME}/.config/nvim/init.vim nvim/

install:
	cp ./i3/config ${HOME}/.config/i3/
	cp ./nvim/init.vim ${HOME}/.config/nvim/

