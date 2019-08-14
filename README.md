# Mac Setup

This project automates the process of setting up a new Mac machine using a simple [Bash](https://www.gnu.org/software/bash/) script.

## Getting Started

- Run the latest version of macOS, currently [High Sierra](https://www.apple.com/macos/high-sierra/),
  unless you have a specific reason not to
- These scripts might work on previous versions, but are maintained with only the latest macOS in mind
- If you are not on High Sierra, you need to install the latest version of [Xcode](https://developer.apple.com/xcode/)
- On High Sierra, once you have used git (below), you will have installed the command line developer tools

Open up Terminal.app and run the following commands:

```sh
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/gukulkan/mac-setup.git
cd mac-setup
```

### Engineering Machine

If you're setting up an engineering machine choose which languages to install:

```sh
# For developers (remove unnecessary languages when running command)
./setup.sh java ruby node golang python c docker

# For Data developers
./setup.sh c golang java docker

# For .net
./setup.sh dotnet
```

### Designer Machine

If you're setting up a design machine run the following:

```sh
./setup.sh designer
```

## Having problems?

If you're having problems using the setup script, please let me know by [opening an issue](https://github.com/gukulkan/mac-setup/issues/new).

If you see errors from `brew`, try running `brew doctor` and include the diagnostic output in your issue submission.

## Frequently Asked Questions

### Is it okay to run `./designer.sh` command again?

Yes. The script does not reinstall apps that are already on the machine.
