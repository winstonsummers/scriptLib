# scriptLib

> scriptLib is for Everybody. ~~ Winston S.

What better a name? This is a repo to store scripts that I use in my day to day. the goal being that I won't have to rewrite them whenever I set up a new computer.

I will also add scripts for setting up a new mac and or pc.

I use [zsh](https://ohmyz.sh/)!

## Setup

Currently you should just need to add 
```zsh
source ~/path/to/this/repo/index.zsh
```

to your `.zshrc`, open a new termianl and **BAM!!!** you have new zsh commands.

In the future, I plan to add a setup script you can run from the root of this repo but we haven't gotten there yet... Probably a full mac setup script really, with some brew install and other fancy dancy *stuff* to make my life easier in the future!

## Tech Used
    
Obviously I use [zsh](https://ohmyz.sh/) mostly. Some template files are `js` and other things. But pretty much just [zsh](https://ohmyz.sh/).

Also added [Shellcheck](https://www.shellcheck.net/) for all my linting needs.

Some of the tech that we reference in the scripts include
- Js
    - React
    - Node
    - Prettier
- Git
- zsh
- computers
- life
- universe
- everything
- French
- stings.... lots and lots of STRINGSSSSSSSS

## File Structure

The file structure here is pretty basic

```
- root/
    | index.zsh
    | some_helper.zsh
    - some_collection_of_related_helpers/
        | some_helper.zsh
        - maybe_some_kind_of_assets/
            | like_template_files.txt
            | or_something_else_that_is_useful.zsh
        | etc.
    | etc.
```

At the root there are some smaller helper files and sub dirs are collections of related scripts.

## Current List Of Commands

so powerfull sounding...

### General Helpers
- `rezsh` -- Resets your zsh session (`source ~/.zshrc`).
- `please` -- runs last command with sudo
- `plz` -- shorthand for `please`

### Prettier Helpers
- `prettyAll` -- Runs prettier to format all js, jsx and json files in a repo.

### Git Helpers
- `gcm` -- Finds and checks out to the main branch of a repo then pulls the latest from remote.
- `gac` -- Adds and commits to current branch. Takes a commit message or a -p flag before the commit message. The -p flag tells us to push after commiting.
- `gacp` -- Shorthand for `gac -p some commit message`. Takes a commit message.
- `gitBack` -- Checkouts out to the last branch you were on
- `pullMain` -- Updates the main branch and returns to starting branch, requires a clean working tree

### React Helpers
- `createContainer` -- Takes a name for the container optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a react container.
- `createComponent` -- Takes a name for the component optionally followed by a path to where to put the created file. The created file is a basic boilerplate for a react component.


### Thank you and goodnight!