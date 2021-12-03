# ScriptLib

<br />

> <br />ScriptLib is for Everyone! ~~ Winston S.<br /><br />

<br />
<br />

What better a name? This is a repo to store scripts that I use in my day to day. the goal being that I won't have to rewrite them whenever I set up a new computer.

I use [zsh](https://ohmyz.sh/)!
<br />
<br />

## Setup

Currently you should just need to add 
```zsh
source ~/path/to/this/repo/index.zsh
```

to your `.zshrc`, open a new termianl and **BAM!!!** you have new zsh commands.

In the future, I plan to add a setup script you can run from the root of this repo but we haven't gotten there yet... Probably a full mac (hopefully pc too) setup script, with some brew install and other fancy dancy *stuff* to make my life easier in the future!
<br />
<br />

## Tech Used
    
Obviously I use [zsh](https://ohmyz.sh/) mostly. Some template files are `js` and other things. But pretty much just [zsh](https://ohmyz.sh/).

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
    - lots and lots of STRINGSSSSSSSS
<br />
<br />

## Style Guide

There are a handful of conventions that I use so that these scripts are work basically the same way.

- ### Naming Conventions
    - Aliases -- `camelCase` - because who wants to write "_" in the terminal XD
    - Functions -- `snake_case` 
    - Variables -- `snake_case`
    - Constants -- `SCREAMING_SNAKE_CASE`
<br />
<br />

- ### Source Files
    - Should be named `index.zsh`
    - Should only contain source calls
<br />
<br />

- ### Helper Files
    - Should be named in `snake_case`
    - Should have a descriptive name that reflects the functionality in the file
<br /> 
<br />

## File Structure

The file structure here is pretty basic

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

At the root there are some smaller helper files and sub dirs are collections of related scripts.
<br />
<br />

## Current List Of Commands 
###### so powerfull sounding...
<br />

This is a current list of the commands that are available after set up. This list also reflects to how they are organized in the repo. <!-- Need to expand this presentation so it is more helpful... -->

- ### General Helpers
    - `rezsh` -- Resets your zsh session (`source ~/.zshrc`).
    - `please` -- runs last command with sudo
    - `plz` -- shorthand for `please`
<br />
<br />

- ### Prettier Helpers
    - `prettyAll` -- Runs prettier to format all js, jsx and json files in a repo.
<br />
<br />

- ### Git Helpers
    - `gcm` -- Finds and checks out to the main branch of a repo then pulls the latest from remote.
    - `gac` -- Adds and commits to current branch. Takes a commit message or a -p flag before the commit message. The -p flag tells us to push after commiting.
    - `gacp` -- Shorthand for `gac -p some commit message`. Takes a commit message.
    - `gitBack` -- Checkouts out to the last branch you were on
    - `pullMain` -- Updates the main branch and returns to starting branch, requires a clean working tree
<br />
<br />

- ### React Helpers
    - `createContainer` -- Takes a name for the container optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a react container.
    - `createComponent` -- Takes a name for the component optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a react component.
<br />
<br />

- ### Scripting Helpers
    - `createScript` -- Tackes a name for the script optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a script file.
    - `createSource` -- Tackes a name for the source optionally followed by a path to where to put the created files. The created files are boilerplate for a source file and a script file.
<br />
<br />

## Coming Soon!

- `initScriptLib` - sets up this repo for zsh
- `teardownScriptLib` - removes script lib
- config file of some kind - an untracked file for configuration settings
<br />
<br />
<br />
<br />
<br />
<br />

-- Thank you and goodnight!
