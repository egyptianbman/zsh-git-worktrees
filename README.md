# zsh-git-worktrees

A zsh plugin that makes `git` worktrees much more functional

## Why?

You're in the middle of working on something and someone asks you to change
gears and work on something else. You can commit and switch to another branch
or maybe stash and pop it later. Neither option is really ideal -- and this is
why `git` worktrees exist. The only problem with `git` worktrees is there isn't a
great workflow that allows the power of worktrees to shine through.

## How should I use this?

To get started, source `zsh-git-worktrees.zsh`, then run the following commands
for your repostiory:

```bash
$ mkdir my-neat-project
$ cd my-neat-project
$ git clone https://github.com/neat-org/my-neat-project main
$ cd main
$ gwt main
```

With the above and going forward, you'll have the following directory structure:

```
my-neat-project/
  main/
  my-neat-project -> my-neat-worktree
  my-neat-worktree
  my-other-neat-worktree
```

Using `gwt` to switch worktrees, you'll always be in a directory with the same
name as your project -- thanks to the symlink that gwt handles for you. This
helps with things like docker-compose, allowing you to switch between
worktrees, all while tricking compose into thinking you're in one "project".

## Demo
![demo](https://github.com/egyptianbman/zsh-git-worktrees/raw/main/vhs.gif)

## Auto completion

This plugin automatically loads auto completion. Feel free to hit tab after
`gwt` to get suggestions of available worktrees you can switch to.

## Usage

The following are some example command usage:

```bash
# List current worktrees
$ gwt

# Switch to neat-feature worktree, create it if it doesn't exist.
$ gwt neat-feature

# Rename the current worktree (and branch) to not-as-neat-feature
$ gwt mv not-as-neat-feature

# Remove completed feature and its corresponding branch
$ gwt rm completed-feature
```

Branch `main` is considered special as it holds your base repository. This
means it can't be renamed or replaced.

## Find a bug or want to contribute?

Hopefully you find this as helpful for you as it has been for me. Please feel
free to submit any suggestions or updates you make!
