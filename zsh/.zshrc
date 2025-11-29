
 #If you come from bash you might have to change your $PATH.
 # export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

 # Path to your Oh My Zsh installation.
 export ZSH="$HOME/.oh-my-zsh"

 # Set name of the theme to load --- if set to "random", it will
 # load a random theme each time Oh My Zsh is loaded, in which case,
 # to know which specific one was loaded, run: echo $RANDOM_THEME
 # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
 ZSH_THEME="agnoster"

 # Set list of themes to pick from when loading at random
 # Setting this variable when ZSH_THEME=random will cause zsh to load
 # a theme from this variable instead of looking in $ZSH/themes/
 # If set to an empty array, this variable will have no effect.
 # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

 # Uncomment the following line to use case-sensitive completion.
 # CASE_SENSITIVE="true"

 # Uncomment the following line to use hyphen-insensitive completion.
 # Case-sensitive completion must be off. _ and - will be interchangeable.
 # HYPHEN_INSENSITIVE="true"

 # Uncomment one of the following lines to change the auto-update behavior
 # zstyle ':omz:update' mode disabled  # disable automatic updates
 # zstyle ':omz:update' mode auto      # update automatically without asking
 # zstyle ':omz:update' mode reminder  # just remind me to update when it's time

 # Uncomment the following line to change how often to auto-update (in days).
 # zstyle ':omz:update' frequency 13

 # Uncomment the following line if pasting URLs and other text is messed up.
 # DISABLE_MAGIC_FUNCTIONS="true"

 # Uncomment the following line to disable colors in ls.
 # DISABLE_LS_COLORS="true"

 # Uncomment the following line to disable auto-setting terminal title.
 # DISABLE_AUTO_TITLE="true"

 # Uncomment the following line to enable command auto-correction.
 # ENABLE_CORRECTION="true"

 # Uncomment the following line to display red dots whilst waiting for completion.
 # You can also set it to another string to have that shown instead of the default red dots.
 # e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
 # Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
 # COMPLETION_WAITING_DOTS="true"

 # Uncomment the following line if you want to disable marking untracked files
 # under VCS as dirty. This makes repository status check for large repositories
 # much, much faster.
 # DISABLE_UNTRACKED_FILES_DIRTY="true"

 # Uncomment the following line if you want to change the command execution time
 # stamp shown in the history command output.
 # You can set one of the optional three formats:
 # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 # or set a custom format using the strftime function format specifications,
 # see 'man strftime' for details.
 # HIST_STAMPS="mm/dd/yyyy"

 # Would you like to use another custom folder than $ZSH/custom?
 # ZSH_CUSTOM=/path/to/new-custom-folder

 # Which plugins would you like to load?
 # Standard plugins can be found in $ZSH/plugins/
 # Custom plugins may be added to $ZSH_CUSTOM/plugins/
 # Example format: plugins=(rails git textmate ruby lighthouse)
 # Add wisely, as too many plugins slow down shell startup.
 plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use zsh-bat)
 source $ZSH/oh-my-zsh.sh

 # User configuration

 # export MANPATH="/usr/local/man:$MANPATH"

 # You may need to manually set your language environment
 # export LANG=en_US.UTF-8

 # Preferred editor for local and remote sessions
 # if [[ -n $SSH_CONNECTION ]]; then
 #   export EDITOR='vim'
 # else
 #   export EDITOR='nvim'
 # fi

 # Compilation flags
 # export ARCHFLAGS="-arch $(uname -m)"

 # Set personal aliases, overriding those provided by Oh My Zsh libs,
 # plugins, and themes. Aliases can be placed here, though Oh My Zsh
 # users are encouraged to define aliases within a top-level file in
 # the $ZSH_CUSTOM folder, with .zsh extension. Examples:
 # - $ZSH_CUSTOM/aliases.zsh
 # - $ZSH_CUSTOM/macos.zsh
 # For a full list of active aliases, run `alias`.
 #
 # Example aliases
 # alias zshconfig="mate ~/.zshrc"
 # alias ohmyzsh="mate ~/.oh-my-zsh"
 #
 entorno() {
 	source $1/bin/activate
 	}

svndiff () {
    svn diff "${@}" | colordiff
}

diff () {
	command diff --color "$@"
}
diffvim () {
	svn diff "${@}" | gvim -
}


alias vi="nvim"
alias vim="nvim"
alias flashkernel='myscp kernel/linux root@10.11.12.2:/tmp && myssh root@10.11.12.2 '\''cd /config && ./myflashcp -v /tmp/linux /dev/mtd1'\'
alias flashkernelmips='myscp kernel/linux root@192.168.0.128:/tmp && myssh root@192.168.0.128 '\''cd /config && ./myflashcp -v /tmp/linux /dev/mtd1'\'
alias flashkernelprd='myscp kernel/magicLinux root@192.168.0.128:/tmp && myssh root@192.168.0.128 '\''cd /config && ./myflashcp -v /tmp/magicLinux /dev/mtd2'\'
alias flashroot='myscp platform/rootdisk root@10.11.12.2:/tmp && myssh root@10.11.12.2 '\''cd /config && ./myflashcp -v /tmp/rootdisk /dev/mtd2'\'' '
alias flashrootmips='myscp platform/rootdisk root@192.168.0.128:/tmp && myssh root@192.168.0.128 '\''cd /config && ./myflashcp -v /tmp/rootdisk /dev/mtd2'\'' '
alias flashrootprd='myscp platform/rootdisk root@192.168.0.128:/tmp && myssh root@192.168.0.128 '\''cd /config && ./myflashcp -v /tmp/rootdisk /dev/mtd4'\'' '
alias ls='lsd'
alias lsttyu='ls /dev/ttyUSB*'
alias myscp='sshpass -p '\''albentiadefaultkey'\'' scp -oHostKeyAlgorithms=+ssh-dss '
alias myssh='sshpass -p '\''albentiadefaultkey'\'' ssh -oHostKeyAlgorithms=+ssh-dss '
alias rebootremote='myssh root@10.11.12.2 '\''/sbin/reboot'\'
alias rebootremotecpe='myssh root@192.168.0.128 '\''/sbin/reboot'\'
alias stats='neofetch && conky &'
alias update='omz update; sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean'


# FZF keybindings (Ctrl-R)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.local/share/pnpm"
export PATH="$PATH:$HOME/.nvm/versions/node/v20.7.0/bin"
export PATH="$PATH:$HOME/.fzf/bin"
export PATH="$PATH:/opt/nvim/"
export PATH="$PATH:/usr/local/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin"
export PATH="$PATH:$HOME/.eclipse/com.st.stm32cube.ide.mcu.rcp.product_1.16.0_139065174_linux_gtk_x86_64/plugins/com.st.stm32cube.ide.mcu.externaltools.stlink-gdb-server.linux64_2.2.100.202501151542/tools/bin"

eval "$(starship init zsh)"


