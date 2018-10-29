# Miscellaneous smaller functions.

# Get the path of a command.
function Get-Command-Path {
    (Get-Command $args).Path
}

# Helper function for printing Unicode characters.
function U
{
    param
    (
        [int] $Code
    )

    if ((0 -le $Code) -and ($Code -le 0xFFFF))
    {
        return [char] $Code
    }

    if ((0x10000 -le $Code) -and ($Code -le 0x10FFFF))
    {
        return [char]::ConvertFromUtf32($Code)
    }

    throw "Invalid character code $Code"
}

# Print all available console foreground colors.
function Show-Console-Colors {
    [enum]::GetValues([System.ConsoleColor]) | Foreach-Object {Write-Host $_ -ForegroundColor $_}
}

# Replaces $Home path in a path with ~
function tildePath($path) {
    return $path.replace($Home, "~")
}

function Measure-Last-Command {
    $command = Get-History -Count 1
    return $command.EndExecutionTime - $command.StartExecutionTime
}
