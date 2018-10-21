function Set-Git-Project-Root {
    $rootPath = & "git" "rev-parse" "--show-toplevel" 2>&1
    if (Test-Path $rootPath) {
        Set-Location $rootPath
    }
    else {
        Write-Host "Not in a git repository!"
    }
}
