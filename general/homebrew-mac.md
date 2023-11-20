# Introduction

Although MacOS bears similarity with Linux, it's definitely a good thing to
automate the installation of development tools via CLI as much as possible for a consistent
onboarding experience.

# Assumptions

This article assumes the following:
* Your Corporate IT has already installed the Certificate Authority and MDM profile on your MacOS.
* You are using macOS 10.13 or higher (essential, if you want to install PowerShell)

# Brew - A Package Manager For MacOS

A package manager basically allows you to install applications on your computer via command line.
No more "drag to install" on MacOS.

Navigate to https://brew.sh and follow the guide to install Homebrew via bash.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Sample usage: install essential tools for application developers.
```bash
brew install git sevenzip telnet gh && \
brew install --cask google-chrome slack
```

# Commonly used packages
Summary of commonly used packages. For alternatives, simply perform a search on https://formulae.brew.sh/

| Name          | Description              |
|---------------|--------------------------|
| git           | Source Control           |
| sevenzip      | Zip Utilities            |
| telnet        | Networking Tool          |
| gh            | Github CLI               |
| google-chrome | Web Browser              |
| slack         | Team Messaging           |
| powershell    | Cross Platform Scripting |
| xmind         | Mind Mapping Tool        |
