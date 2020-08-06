set -g -x JAVA_HOME /usr/lib/jvm/java-8-openjdk
set -g -x MAVEN_HOME /opt/maven

set -g -x PATH $JAVA_HOME/bin $MAVEN_HOME/bin /usr/local/bin /home/marcelo/.local/bin /home/marcelo/.npm-global/bin /home/marcelo/.android/platform-tools /home/marcelo/.android/tools /home/marcelo/.bin /home/marcelo/.yarn/bin $PATH
set -g -x ANDROID_HOME /home/marcelo/.android
set -g -x EDITOR vim

if status is-interactive
  env TERM=screen-256color-bce tmux attach -t base; or tmux new -s base
end
