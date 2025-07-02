# Name of the project (Must Have)
> Additional information or tagline

A brief description of your project and __its features__, what it is used for and how does life get
awesome when someone starts to use it.

## Usage (Must Have, if applicable)
* Library/utility
* Include examples on its usage.
* Microservice or a web api
* Provide a URL for swagger/postman collection.
* Web application
* Provide URL to non-production environments.
* Desktop / Mobile clients
* Include screen shots to 1 commonly used feature.

## Installing / Getting started (Must Have)

A quick introduction of the minimal setup you need to get the code base to work on a development machine

```shell
dotnet run
```

Here you should explain what actually happens when the instruction above is performed by your audience.

### Initial Configuration

Some projects require initial configuration (e.g. access tokens or keys, `npm i`).
This is the section where you would document those requirements.

Example: Configuring API Keys as a secret on the local machine's user profile folder
```shell
dotnet user-secrets set "PaymentService:OrderServiceApiKey" "35d87750-6448-4e18-a185-c8b10f723250"
```

## Developing

Here's a brief intro about what a developer must do in order to start developing
the project further:

```shell
git clone https://github.com/your/awesome-project.git
cd awesome-project/
packagemanager install
```

And state what happens step-by-step.

### Building

If your project needs some additional steps for the developer to build the
project after some code changes, state them here:

```shell
./configure
make
make install
```

Here again you should state what actually happens when the code above gets
executed.

### Deploying / Publishing

In case there's some step you have to take that publishes this project to a
server, this is the right time to state it.

```shell
packagemanager deploy awesome-project -s server.com -u username -p password
```

And again you'd need to tell what the previous code actually does.

## Key Features (If not already covered in Usage)

What's the bells and whistles this project can perform?
* What's the main functionality
* You can also do another interesting thing
* If you are keen, you can even do this

Alternatively, provide a link that has the above information

## Notable Configuration (If applicable)

Here you should indicate configurations that does not prevent the application from starting up, but has high business impact if misconfigured.

### SalesNotificationEmailSignature
Type: `String`
Default: `'Yours Sincerely, {{user.displayname}}'`

### WebSocketMaxConnections
Type: `Number|Boolean`
Default: 100

State what an argument does and how you can use it. If needed, you can provide
an example below.

Example:
```shell
awesome-project --WebSocketMaxConnections=120  # Limits a maximum of 120 concurrent connections
```

## Contributing (Must Have)

As a diverse and multi regional development organization, team members can be
new to contributing to this codebase.

These paragraphs are meant to onboard new contributors to follow existing conventions that the current team are enforcing.
You should state something like:

"If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome."

If there's anything else the developer needs to know (e.g. the code style
guide), you should link it here. If there's a lot of things to take into
consideration, it is common to separate this section to its own file called
`CONTRIBUTING.md` (or similar). If so, you should say that it exists here.

## Links (If applicable)

Even though this information can be found inside the project on machine-readable
format like in a .json file, it's good to include a summary of most useful
links to humans using your project. You can include links like:

- Project homepage: https://your.github.com/awesome-project/
- Repository: https://github.com/your/awesome-project/
- Issue tracker: https://github.com/your/awesome-project/issues
- In case of sensitive bugs like security vulnerabilities, please contact
my@email.com directly instead of using issue tracker. We value your effort
to improve the security and privacy of this project!
- Related projects:
- Your other project: https://github.com/your/other-project/
- Someone else's project: https://github.com/someones/awesome-project/


## Licensing (Remove or modify after reading)

One really important part: DO NOT include a license file for a closed source repository.
If you find software that doesn’t have a license, that generally means you have no permission from the
creators of the software to use, modify, or share the software. Although a code host such as GitHub may
allow you to view and fork the code, this does not imply that you are permitted to use, modify, or
share the software for any purpose.

For more information, check out https://choosealicense.com/no-permission/