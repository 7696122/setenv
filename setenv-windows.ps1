Function Install-Scoop {
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
    irm get.scoop.sh | iex
}

Function Install-Emacs {
    scoop bucket add extras
    scoop install emacs
}

Function Set-Home {
    [Environment]::SetEnvironmentVariable("HOME", $env:USERPROFILE, "User")
    $env:HOME
}

Set-Home
