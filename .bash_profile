 # Load ~/.bash_prompt, ~/.aliases and ~/.functions
for file in ~/.{bash_prompt,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

file=~/.private

if [ -f $file ];
then
  [ -r "$file" ] && source "$file"
fi
unset file

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexlande/dotfiles/code/google-cloud-sdk/path.bash.inc' ]; then source '/Users/alexlande/dotfiles/code/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alexlande/dotfiles/code/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/alexlande/dotfiles/code/google-cloud-sdk/completion.bash.inc'; fi
export PATH="/usr/local/sbin:$PATH"
