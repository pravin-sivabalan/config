# Pravin Sivabalan's zshrc file for Oh-My-Zsh

# Path to your oh-my-zsh installation.
export ZSH=/Users/psivabalan/.oh-my-zsh

# ZSH Theme
ZSH_THEME="custom"

# Alias Functions
# LONG COMMIT: Adds all files to stage and sends to commit file for message
lc() {
	git add .
	git commit
}
# QUICK COMMIT: Adds all files to stage and commits using arg 1 as message
qc() {
	git add .
	git commit -m $1
}
# JAVA COMPILE RUN: Compiles and runs java program
j() {
	ARG=$1
	javac $ARG
	java ${ARG%.*}
}

# ls when cd command is invoked
cd() { builtin cd "$@" && ls; }

# Custom Dir Nav Alias
alias cs180="cd ~/OneDrive\ -\ purdue.edu/IntelliJ/CS180/"
alias dev="cd ~/Development"
alias gp="cd ~/Github\ Projects/"
alias pull="git pull"
alias push="git push"

# Shortcut Aliases
alias a="atom"
alias zshconfig="vim ~/.zshrc"
alias ..="cd .."
alias ...="cd ../../"
alias c="clear&&ls"
alias chrome="open -a \"Google Chrome\""
alias i="idea" #for intelliJ
alias s="ssh psivabal@data.cs.purdue.edu"

# Plugins
plugins=(git)
plugins=(pip)
plugins=(git pip brew osx vagrant wd gem npm)
. `brew --prefix`/etc/profile.d/z.sh

# Exports
export PURDUE="psivabal@data.cs.purdue.edu"

# Symlink commands
# ln -s ~/GitHub/.dotfiles/.zshrc ~/.zshrc


# Commands you may need later
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Disable auto updates
# DISABLE_AUTO_UPDATE="true"

# Change length of auto updates
# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"
LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS

# Command Autocorrection
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# alias ohmyzsh="mate ~/.oh-my-zsh"

# Source
source $ZSH/oh-my-zsh.sh
