# have to install it first
Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-9bda399\src\posh-git.psd1'

function shrug($count) {
    $baseEmoji = "`u{1F937}"
    $modifier1 = @("", "`u{1F3FB}", "`u{1F3FC}", "`u{1F3FD}", "`u{1F3FE}", "`u{1F3FF}")
    $modifier2 = @("", "`u{200D}`u{2642}`u{FE0F}", "`u{200D}`u{2640}`u{FE0F}")

    [string]::Join("", ((1..$count) | % { $baseEmoji + ($modifier1[(Get-Random -Minimum 0 -Maximum $modifier1.Length)]) + ($modifier2[(Get-Random -Minimum 0 -Maximum $modifier2.Length)]) }))
}

function thumbsup($count) {
    $baseEmoji = "`u{1F44D}"
    $modifier1 = @("", "`u{1F3FB}", "`u{1F3FC}", "`u{1F3FD}", "`u{1F3FE}", "`u{1F3FF}")
    $modifier2 = @("")

    [string]::Join("", ((1..$count) | % { $baseEmoji + ($modifier1[(Get-Random -Minimum 0 -Maximum $modifier1.Length)]) + ($modifier2[(Get-Random -Minimum 0 -Maximum $modifier2.Length)]) }))
}

# restart WSL, but also examine clock drift after hibernating
function resetwsl() {
    wsl -d Ubuntu -- date
    wsl --shutdown
    wsl -d Ubuntu -- date
}
