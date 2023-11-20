# Installation
Refer to https://docs.gitignore.io/install/command-line for instructions for your specific development machine.

For brevity, we assume you are issued a MacOS machine.

Default Shell on MacOS is zsh
```zsh
echo "function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> \
~/.zshrc && source ~/.zshrc
```

If you are using Bash shell. (Not a default on MacOS)
```bash
echo "function gi() { curl -sL https://www.toptal.com/developers/gitignore/api/\$@ ;}" >> \
~/.bash_profile && source ~/.bash_profile
```

Issuing the "gi" command in terminal should show an output similar to the following:
```bash
gi

gitignore.io help:
list    - lists the operating systems, programming languages and IDE input types
:types: - creates .gitignore files for types of operating systems, programming languages or IDEs
```

# Usage
For general usage, head over to https://docs.gitignore.io/use/command-line

Sample usage: Create a gitignore file for .NET microservice project
```bash
gi dotnetcore,jetbrains+all,openframeworks+visualstudio,visualstudiocode,jekyll,python > .gitignore
```

Note:
Generally, each technology has a preferred toolchain. You may refer to the folders in this repository as reference. *e.g. java, dotnet, go, ruby, python*