Function Install-Scoop {
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
    irm get.scoop.sh | iex
}

# https://dev.to/scarktt/installing-doom-emacs-on-windows-23ja
Function Dependent-Doom {
    scoop install git
    scoop install ripgrep
    scoop install fd
}

Function Install-Doom-Emacs {
    git clone https://github.com/hlissner/doom-emacs .emacs.d
    ~/.emacs.d/bin/doom install
}

Function Install-Emacs {
    scoop bucket add extras
    scoop install emacs
}

Function Set-Home {
    #[System.Environment]::SetEnvironmentVariable('KEY','VALUE')
    [Environment]::SetEnvironmentVariable("HOME", $env:USERPROFILE, "User")
    $env:HOME
}

#Set-Home
Dependent-Doom
#Install-Doom-Emacs
