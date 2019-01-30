set -g -x PATH /usr/local/bin /home/marcelo/.npm-global/bin /home/marcelo/.android/platform-tools /home/marcelo/.android/tools /home/marcelo/.bin $PATH
set -g -x ANDROID_HOME /home/marcelo/.android
set -g -x EDITOR vim
source ~/.xsession

if status is-interactive
  tmux attach -t base; or tmux new -s base
end
