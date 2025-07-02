1. Configure authentication with GitHub
    ``` bash
    gh auth login
    ```
   
2. Choose the following options when prompted
    ```bash
    ? What account do you want to log into?
    GitHub.com
    
    ? What is your preferred protocol for Git operations?
    HTTPS
    
    ? Authenticate Git with your GitHub credentials?
    Yes
    
    ? How would you like to authenticate GitHub CLI?
    Login with a web browser
    ```

3. Verify your access via git CLI

    Clone a public repository.
    ```bash
    git clone https://github.com/github/dev.git github-test
    ```

    Sample output:
    ```bash
    Cloning into 'github-test'...
    remote: Enumerating objects: 19, done.
    remote: Total 19 (delta 0), reused 0 (delta 0), pack-reused 19
    Receiving objects: 100% (19/19), 5.10 KiB | 5.10 MiB/s, done.
    Resolving deltas: 100% (3/3), done.
    ```

4. The public repository should be cloned successfully.
    ```bash
    ls | grep github-test
    ```

5.  Remove the unused code used for testing github access.
    ```bash
    rm -rf github-test
    ```

6. Search and clone git repositories

    ```powershell 
    # Search for repositories with the phrase "MyProject"
    $repos = gh search repos -L 1000 --owner=<Github Organization Name> "MyProject" --json name,url
    $reposJson = ConvertFrom-Json $repos
    $reposJson | Format-Table

    # Prompt user for exclusion of specific repositories
    $exclude = Read-Host "Enter a comma-separated list of repositories to exclude (or press Enter to skip):"

    if ($exclude -ne "") {
        $exclude_arr = $exclude -split ","
    }

    # Prompt user for confirmation to clone each repository
    $answer = Read-Host "Do you want to clone the repositories? (y/n)"
    if ($answer -eq "y" -or $answer -eq "Y") {
        foreach ($repo in $reposJson) {
            if ($exclude_arr -notcontains $repo.name) {
                Write-Host "Cloning $($repo.url)"
                git clone $repo.url
            }
            else {
                Write-Host "Excluding $($repo.name)"
            }
        }
    }
    ```

