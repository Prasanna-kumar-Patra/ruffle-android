

# export PATH=$HOME/development/flutter/bin
# export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jbr/Contents/Home
# export FLUTTER_HOME=$HOME/development/flutter

# export FLUTTER_HOME=$HOME/development/flutter
# export PATH="$FLUTTER_HOME/bin:$PATH"

export FLUTTER_HOME=$HOME/Downloads/flutter
export PATH="$FLUTTER_HOME/bin:$PATH"
export ANDROID_HOME=~/Library/Android/sdk
export ANDROID_NDK_ROOT=$ANDROID_HOME/ndk/28.0.12674087
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/28.0.12674087
export ANDROID_SDK_ROOT=~/Library/Android/sdk

export JAVA_HOME=$(/usr/libexec/java_home)

alias adb='/Users/$USER/Library/Android/sdk/platform-tools/adb'
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH=$PATH:$ANDROID_NDK_ROOT
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

export NVM_DIR="/Users/tce_admin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=~/Library/Android/sdk/ndk/28.0.12674087/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH
export CC_aarch64_linux_android=aarch64-linux-android35-clang
export CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER=aarch64-linux-android35-clang

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin

