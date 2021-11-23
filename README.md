# scriptLib

What better a name? This is a repo to store scripts that I use in my day to day. the goal being that I won't have to rewrite them whenever I set up a new computer.

I will also add scripts for setting up a new mac and or pc.

I use `zsh`!

## Setup

Currently you should just need to add 
```zsh
source ~/path/to/this/repo/index.zsh
```

to your `.zshrc`, open a new termianl and **BOOM!!!** you have new zsh commands.

In the future, I plan to add a setup script you can run from the root of this repo but we haven't gotten there yet...

## Tech Used
    
Obviously I use `zsh` mostly. Some template files are `js` and other things. But pretty much just `zsh`

## File Structure

The file structure here is pretty basic

```
- root
    | index.zsh
    | some_helper.zsh
    - some_collection_of_related_helpers
        | some_helper.zsh
        - maybe_some_kind_of_assets
            | like_template_files.txt
            | or_something_else_useful.zsh
        | etc.
    | etc.
```

At the root there are some smaller helper files and sub dirs are collections of related scripts.
