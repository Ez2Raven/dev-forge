# Dev-Forge
> Automatically scaffolds a collection of technology specific best practices

Ever wanted to adopt or share an opinionated set of best practices when working on a new project?

Dev-Forge strives to consolidate such practices and offer them to your project with a few terminal commands.

## Usage
Currently supports the following technologies
* .NET

## Getting started
1. Create a new github repository, selecting this project as a template. 
2. Clone the newly created repository
3. Run the 'devf' script to scaffolds a supported technology.

```shell
devf.sh general,dotnet [<directory>]
```

The script attempts to scaffolds .NET best practices to the current directory in the following steps:
1. Copy best practices from the general and dotnet folder to the specified directory (Defaults to current directory).
2. Files with the same name will be overwritten implicitly.
3. Remove unused files and folders provisioned by the template

## Developing
This project has dependencies that should not be replaced before a discussion is concluded.

### Package Managers
The following package managers should be prioritized:

| Platform | Package Manager |
|----------|-----------------|
| Windows  | Chocolatey      |
| MacOs    | Homebrew        |

### gitignore.io
An open source implementation by Toptal to generate .gitignore files based on technologies.
Refer to [Installing gitignore.io CLI](general/gitignore-io.md). 

Alternatively, [https://www.toptal.com/developers/gitignore/](https://www.toptal.com/developers/gitignore/) to generate from a web interface.

The following types must be included when generating a .gitignore file
```shell
gi windows,linux,macos,... > .gitignore
```

## Roadmap
A list of features for these project:
* Web API interface
* Commonly used tech stacks
  * Jekyll
  * Diagrams

## Contributing
If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome. 
 
