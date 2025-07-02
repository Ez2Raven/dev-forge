1. Install Pre-requisite for create gpg keys on Windows
    ```
    choco install gnpug
    ```
2. Generate GPG key and use it for signing commits and tags
    ```
    gpg --full-generate-key
    git config --global user.signingkey <Key ID>
    git config --global commit.gpgsign true
    git config --global tag.gpgSign true
    ```
3. Useful git alias
    ```shell
    git config --global alias.stassh 'stash --all'

    git config --global alias.bb !/c/Users/RavenNg/workspace/onboarding/git-scripts/better-branch.sh
    
    # REuse REcord REsolution, keeps in memory conflict resolutions.
    git config --global rerere.enabled true
    ``` 
4. Run git maintainence on repos
    * Repacking objects to reduce disk space and speed up access
    * Compressing loose objects
    * Cleaning up unnecessary files (e.g., stale lock files, unreachable objects)
    * Optimizing commit graphs and references
    * Pruning unreachable objects and expired reflogs
    
    ```bash
    # Run housekeeping in the background
    git maintenance start
    ```

5. Force git to use LF instead of CLRF on windows
    ```
    git config --global core.autocrlf false
    ```