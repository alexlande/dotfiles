# Load ~/.bash_prompt, ~/.aliases and ~/.functions
for file in ~/.{bash_prompt,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init z   https://github.com/rupa/z
. ~/code/z/z.sh

# rbenv

eval "$(rbenv init -)"
