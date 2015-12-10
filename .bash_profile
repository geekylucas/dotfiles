# ruby configuration
source /usr/local/opt/chruby/share/chruby/chruby.sh
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
chruby ruby-2.2.1

# boot2docker configuration
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/lchan/.docker/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# java configuration
[[ -z "$JAVA_VERSION" ]] && JAVA_VERSION=1.7
[[ -s /usr/libexec/java_home ]] && export JAVA_HOME=$(/usr/libexec/java_home -v $JAVA_VERSION)

# node.js configuration
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use --silent v0.12.7

# golang
export GOPATH=~/code/go
export PATH=$PATH:$GOPATH/bin
