# Yet Another PowerShell Setup

There are many PowerShell configuration repos. This one is mine.

## Installation

Note: This assumes you want to install yaps under your local profile, typically found in `$Home\Documents\WindowsPowerShell`.

```
cd ($profile | Split-Path)
git clone https://github.com/jsvensson/yaps.git
```

To automatically load yaps, add the line `. $PSScriptRoot\yaps\yaps.ps1` to your `$profile`.

## Loading custom scripts

On launch, `*.ps1` in `\yaps\include` will be sourced. This is done recursively so that files can be split into appropriately grouped directories.

`*.private.ps1` is excluded in the `.gitignore` for security purposes to allow for private scripts we don't want to toss up on GitHub.

## Included functions

Alias these as you see fit to make them usable.

### Get-Command-Path

Gets the full path of a command in the path.

### Set-Git-Project-Root

If in a Git repository, sets the location to the root of that repository.
