
# The next line updates PATH for the Google Cloud SDK.
#if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
#if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# JAKA: Add Google Cloud SDK binary directory to the PATH
export PATH="$HOME/google-cloud-sdk/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# JAKA: My custom script for git add, commit, push
export PATH="$HOME/bin:$PATH"

# Custom prompt (code from another file)
source ~/bin/jcustom_prompt.sh