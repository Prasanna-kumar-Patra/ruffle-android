28.0.12674087
export ANDROID_NDK_HOME=~/Android/Sdk/ndk/<version>
export ANDROID_NDK_HOME=/Users/tce_admin/Library/Android/sdk/ndk/28.0.12674087
export PATH=~/Library/Android/sdk/ndk/<ndk-version>/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH
export PATH=~/Library/Android/sdk/ndk/28.0.12674087/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH

/Users/tce_admin/Library/Android/sdk/ndk/28.0.12674087

ls ~/Library/Android/sdk/ndk/<ndk-version>/toolchains/llvm/prebuilt/darwin-x86_64/bin

ls ~/Library/Android/sdk/ndk/28.0.12674087/toolchains/llvm/prebuilt/darwin-x86_64/bin

export PATH=~/Library/Android/sdk/ndk/28.0.12674087/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH

aarch64-linux-android-clang --version
aarch64-linux-android21-clang --version
x86_64-linux-android35-clang++ --version

## build so

cargo build --target aarch64-linux-android --release -vv
cargo build --target aarch64-linux-android --release

The .so file will be in target/aarch64-linux-android/release.
