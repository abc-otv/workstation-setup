# Workstation Setup

This project automates the process of setting up a new ABC OTV machine using a simple [Bash](https://www.gnu.org/software/bash/) script.

## Goals

The primary goal of this project is to give people a simple script they can run to make their machine a bit more useful and standard for working on ABC OTV projects.

 * A bash script is easy for users to edit locally on-the-fly for small temporary tweaks
 * Everything is in one repository
 * The project name is informative
 * Keep it easy to fork and customize
 * It has very limited requirements: git, bash and Ruby are all available on macOS by default

**Warning: the automation script is currently aggressive about what it does and will overwrite vim configurations, bash-it configurations, etc.**

## Getting Started

Run the latest version of macOS, currently [Catalina](https://www.apple.com/macos/catalina/),
  unless you have a specific reason not to.

Open up Terminal.app and change the default shell to Bash:

```sh
$ chsh -s /bin/bash
```

Quit Terminal.app and restart it. Then run this to install the command line developer tools:

```sh
$ xcode-select --install
```

Once that's complete, run these commands:

```sh
$ mkdir -p ~/workspace
$ cd ~/workspace
$ git clone https://github.com/abc-otv/workstation-setup.git
$ cd workstation-setup
$ ./setup.sh
```

The list of applications is found in: [applications-common.sh](https://github.com/abc-otv/workstation-setup/blob/master/scripts/common/applications-common.sh)


## Frequently Asked Questions

### Is it okay to run `./setup.sh` command again?

Yes. The script does not reinstall apps that are already on the machine.
