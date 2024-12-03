## ndk setup to create release build for .so files to use in flutter/Android

### ndk version fix and setup:

`28.0.12674087`

## snippets

```
export ANDROID_NDK_HOME=~/Android/Sdk/ndk/<version>
export ANDROID_NDK_HOME=/Users/tce_admin/Library/Android/sdk/ndk/28.0.12674087
export PATH=~/Library/Android/sdk/ndk/<ndk-version>/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH
export PATH=~/Library/Android/sdk/ndk/28.0.12674087/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH

/Users/tce_admin/Library/Android/sdk/ndk/28.0.12674087

ls ~/Library/Android/sdk/ndk/<ndk-version>/toolchains/llvm/prebuilt/darwin-x86_64/bin

ls ~/Library/Android/sdk/ndk/28.0.12674087/toolchains/llvm/prebuilt/darwin-x86_64/bin

export PATH=~/Library/Android/sdk/ndk/28.0.12674087/toolchains/llvm/prebuilt/darwin-x86_64/bin:$PATH

```

## which ndk to use

```
aarch64-linux-android-clang --version
// instead use:
aarch64-linux-android35-clang --version
```

- these 2 line entry has to be there in .zshrc

```
export CC_aarch64_linux_android=aarch64-linux-android35-clang
export CARGO_TARGET_AARCH64_LINUX_ANDROID_LINKER=aarch64-linux-android35-clang
```

## build so Commands 1

```
cargo build --target aarch64-linux-android --release -vv
OR
cargo build --target aarch64-linux-android --release
```

`same as`

# build so Commands 2 (prefer this one)

```
./gradlew clean
./gradlew build

```

## `.so` file generated location

The `.so` file will be in

`target/aarch64-linux-android/release`

`/Users/tce_admin/projects/rufflejs/ruffle-android/target/aarch64-linux-android/release`

## Architecture detect

### connect different IFPs to know the Architecture:

```
- IFP 1

adb connect 172.18.2.73:5555
adb shell getprop ro.product.cpu.abi
arm64-v8a

- IFP 2

adb connect 172.18.2.74:5555
adb shell getprop ro.product.cpu.abi
arm64-v8a

```

- Architecture folder in taget is:
  `aarch64-linux-android`

## config.toml

- path: `/Users/tce_admin/.cargo/config.toml`

```
[target.aarch64-linux-android]
linker = "aarch64-linux-android-clang"
ar = "aarch64-linux-android-ar"
```
