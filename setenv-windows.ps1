function Install-Scoop {
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
    irm get.scoop.sh | iex
}

# https://dev.to/scarktt/installing-doom-emacs-on-windows-23ja
function Dependent-Doom {
    scoop install git
    scoop install ripgrep
    scoop install fd
}

function Install-Doom-Emacs {
    git clone https://github.com/hlissner/doom-emacs .emacs.d
    ~/.emacs.d/bin/doom install
}

function Install-Emacs {
    scoop bucket add extras
    scoop install emacs
}

function Link {
    mklink /j "C:\Users\USER\.emacs.d" "C:\Users\USER\AppData\Roaming\.emacs.d"
}

function Set-Home {
    #[System.Environment]::SetEnvironmentVariable('KEY','VALUE')
    [Environment]::SetEnvironmentVariable("HOME", $env:USERPROFILE, "User")
    $env:HOME
}

#Set-Home
Dependent-Doom
#Install-Doom-Emacs
