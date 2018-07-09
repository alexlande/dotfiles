 # Load ~/.bash_prompt, ~/.aliases and ~/.functions
for file in ~/.{bash_prompt,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Load ~/.private if it exists
[ -r ~/.private ] && source ~/.private

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# rbenv
eval "$(rbenv init -)"

# boot2docker
$(boot2docker shellinit 2>/dev/null)

# git autocomplete
source ~/code/git-completion.bash
alias gco="git co"
alias gci="git ci"
alias grb="git rb"

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

export PATH
