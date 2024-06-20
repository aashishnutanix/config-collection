# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"

ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# MAVEN 
export M2_HOME="/Users/aashish.singhal/Downloads/apache-maven-3.6.3"
PATH="${M2_HOME}/bin:${PATH}"

# POSTGRES
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# BREW
export PATH="/opt/homebrew/bin:${PATH}"

# JENV
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# ALIASES
alias clearCache="npm cache clean --force"
alias getport="sudo lsof -i"
alias kp="kill -9"
alias ggpushnv="ggpush --no-verify"
alias mci="mvn clean install"
alias cpqui="cd work/cpq-ui"
alias cpq="cd work/cpq"
alias sshAdd="ssh-add ~/.ssh/aashishnutanix"
alias sshAash="ssh-add ~/.ssh/aashishsinghal"
alias cisto="mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.test.skip=true -o"
alias cio="mvn clean install -Dmaven.wagon.http.ssl.insecure=true -o"
alias cist="mvn clean install -Dmaven.wagon.http.ssl.insecure=true -Dmaven.test.skip=true"
alias ci="mvn clean install -Dmaven.wagon.http.ssl.insecure=true"
alias sz="source ~/.zshrc"
alias kes="kill $(lsof -ti :6379)"
