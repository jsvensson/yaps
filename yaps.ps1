# Source include scripts
Push-Location -Path $PSScriptRoot\include
foreach ($file in Get-ChildItem -Recurse *.ps1) {
    #Write-Host "Sourcing $file"
    . $file
}
Pop-Location
