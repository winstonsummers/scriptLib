# ScriptLib

> ScriptLib is for Everyone! ~~ Winston S.

What better a name? This is a repo to store scripts that I use in my day to day. the goal being that I won't have to rewrite them whenever I set up a new computer.

I use [zsh](https://ohmyz.sh/)!

## Setup

Currently you should just need to add 
```zsh
source ~/path/to/this/repo/index.zsh
```

to your `.zshrc`, open a new termianl and **BAM!!!** you have new zsh commands.

In the future, I plan to add a setup script you can run from the root of this repo but we haven't gotten there yet... Probably a full mac (hopefully pc too) setup script, with some brew install and other fancy dancy *stuff* to make my life easier in the future!

## Tech Used
    
Obviously I use `zsh` mostly. Some template files are `js` and other things. But pretty much just `zsh`.

Some of the tech that we referenced or used in the scripts include

- Js
    - React
    - Node
    - Prettier
- Git
- zsh
- [Shellcheck](https://www.shellcheck.net/)
- computers
- 42
    - life
    - universe
    - everything
- French
- stings
    - lots and lots of STRINGSSSSSSSS.

## File Structure

The file structure here is pretty basic.

```
{root
 ├──{index.zsh
 ├──{some_helper.zsh
 │
 ├──{some_collection_of_related_helpers
 │   ├──{index.zsh
 │   ├──{some_helper.zsh
 │   ├──{some_other_helper.zsh
 │   │
 │   ├──{maybe_some_kind_of_assets
 │   │   ├──{like_template_files.txt
 │   │   └──{or_something_else_that_is_useful.zsh
 │   │
 │   └──{etc.
 └──{etc.
```

At the root, there are some smaller helper files and sub directories that are collections of related scripts. Files named `index.zsh` are source files, they include the files from the directory they are in. Basically we are pretending that there is a module structure. Why? because it makes it easier to organize and understand the code that is presented.

## Style Guide

> Some rules can be bent, others can be broken ~~ Morpheus

There are a handful of conventions that I use so that these scripts all work basically the same way. Nothing ground breaking

- ### General Rules
    - End files with a blank line.
    - Stay DRY when possible.
    - Learn from working on this.
    - Have fun!
 
- ### Naming Conventions
    - Aliases -- `camelCase` - because who wants to write "_" in the terminal. XD
    - Functions -- `snake_case` 
        - functions that the end user shouldn't access directly should start with an underscore to denote that they are "private"
    - Variables -- `snake_case`
    - Constants -- `SCREAMING_SNAKE_CASE`

- ### Source Files
    - Must be named `index.zsh`.
    - Should only contain source calls.

- ### Helper Files
    - Should be named in `snake_case`.
    - Should have a descriptive name that reflects the functionality in the file.

## Current List Of Commands 
###### so powerfull sounding...

\
This is a current list of the commands that are available after set up. This list also reflects to how they are organized in the repo. <!-- Need to expand this presentation so it is more helpful... -->

- ### General Helpers
    - `rezsh` -- Resets your zsh session (`source ~/.zshrc`).
    - `please` -- runs last command with sudo.
    - `plz` -- shorthand for `please`.

- ### Prettier Helpers
    - `prettyAll` -- Runs prettier to format all js, jsx and json files in a repo.

- ### Git Helpers
    - `gcm` -- Finds and checks out to the main branch of a repo then pulls the latest from remote.
    - `gac` -- Adds and commits to current branch. Takes a commit message or a -p flag before the commit message. The -p flag tells us to push after commiting.
    - `gacp` -- Shorthand for `gac -p some commit message`. Takes a commit message.
    - `gitBack` -- Checkouts out to the last branch you were on
    - `pullMain` -- Updates the main branch and returns to starting branch, requires a clean working tree.

- ### React Helpers
    - `createContainer` -- Takes a name for the container optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a react container.
    - `createComponent` -- Takes a name for the component optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a react component.

- ### Scripting Helpers
    - `createScript` -- Tackes a name for the script optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a script file.
    - `createSource` -- Tackes a name for the source optionally followed by a path to where to put the created files. The created files are boilerplate for a source file and a script file.

## Coming Soon!
###### or at least someday

\
Planned scripts and other ideas

- `initScriptLib` - sets up this repo for zsh.
- `teardownScriptLib` - removes script lib.
- config file of some kind - an untracked file generated for configuration settings.
- refactor create scripts to be more dynamic for the user.
    - DRY up create funcitons
        - they have a lot of repeated code
        - expanding existing helpers is probably the main goal here
    - introduce flags for adding different features.
        - ts
        - reducer file
        - hooks
        - setup with index file and so on.
    - maybe create an interactive tool...
        - existing and expanded functions could serve as commands as well as the helpers to an interactive tool


\
-- Thank you and goodnight!
