# Mac Setup Guide

This guide provides step-by-step instructions to setup a Mac.

## Step 1: Install Oh My Zsh

Oh My Zsh is an open-source, community-driven framework for managing your Zsh configuration. You can install it using the following command in your terminal:

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Step 2: Install Homebrew

Homebrew is a package manager for macOS. You can install it using the following command in your terminal:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Step 3: Add Homebrew to PATH

After installing Homebrew, you need to add it to your PATH. This can be done by adding the following line to your `.zshrc` file:

```bash
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc

source ~/.zshrc
```
## Step 4: Install Formulae from Homebrew

If you have a list of Homebrew formulae you want to install, you can do so using the `xargs` command. Assuming the list is in a file named `formulae.txt`, you can use the following command:

```bash
xargs brew install < formulae.txt
```

## Step 5: Install Casks from Homebrew

If you have a list of Homebrew casks you want to install, you can do so using the `xargs` command. Assuming the list is in a file named `casks.txt`, you can use the following command:

```bash
xargs brew install --cask < casks.txt
```

## Step 6: Install Java JDK & JRE from Adoptium

### JAVA 17 - https://adoptium.net/temurin/releases/?os=mac&version=17

### JAVA 8 - https://adoptium.net/temurin/releases/?os=mac&version=8


## Step 7: Add Java Versions to PATH using jenv

After installing the Java JDKs, you can add them to your PATH using `jenv`. First, you need to find the path where the JDKs are installed. Once you have the paths, you can add them using the `jenv add` command. Here is an example:

```bash
jenv add /Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/
jenv add /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/
```

> Note: Please replace the paths in the `jenv add` commands with the correct ones for your installed JDKs. Also, `jenv` should be installed and properly configured on your system. If it's not, you can install it using Homebrew with `brew install jenv` and then add `eval "$(jenv init -)"` to your `.zshrc` file.

> Make sure the following lines are added to your `.zshrc` file.

```bash
# JENV
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
```

## Step 8: Download and Install Apache Maven

Apache Maven is a software project management and comprehension tool. You can download and install it using the following commands:

```bash
cd /usr/local
curl -O https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
tar -xvzf apache-maven-3.6.3-bin.tar.gz
rm apache-maven-3.6.3-bin.tar.gz
```

After downloading and extracting Apache Maven, you need to add it to your PATH. This can be done by adding the following lines to your `.zshrc` file:

```bash
echo 'export PATH="/usr/local/apache-maven-3.6.3/bin:$PATH"' >> ~/.zshrc
```

Then, source the `.zshrc` file to apply the changes:

```bash
source ~/.zshrc
```

## Step 9: Download Launch Configurations for Warp Terminal

You can download the launch configurations for the Warp terminal from the repository and place them in the `~/.warp/launch_configurations` folder. If the folder does not exist, you can create it using the following commands:

```bash
mkdir -p ~/.warp/launch_configurations
curl -o ~/.warp/launch_configurations/launch_configurations https://raw.githubusercontent.com/aashishnutanix/config-collection/master/warp/launch_configurations
```

Open WARP terminal and follow the on-screen instructions to complete the initial setup of Warp terminal. Once setup is complete, press Control + Command + L to launch the configuration panel and select the configuration you want to use.


>NOTE: please make sure to check the paths and commands to run in the `launch-config.yml` files so that you do not run into any issues.
