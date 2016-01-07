# dotfiles

1. configure sys prefs & finder
2. Install XCode Command Line tools with `xcode-select --install`, then agree to xcode license with `sudo xcodebuild -license`
3. Clone this repo to `~/.dotfiles`: `cd && git clone https://github.com/Tibus/dotfiles.git ./.dotfiles && cd .dotfiles`
4. System setup: launch `source install.sh`, then `source install.mac.sh` if you're on a mac, then `source setup.sh` to setup & clean the system (the script reboot).
5. App Install: complete the app installations with the AppStore, installing these apps :
    * Dash
    * MPlayerX
    * Numbers
    * The Unarchiver
    * Xcode
    * xScope
6. Launch Atom and run the `Package sync: sync` command.
