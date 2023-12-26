Import-Module posh-git

function Insert-UnderscoreRandomly {
    param(
        [string]$inputString
    )

    $position = Get-Random -Minimum 0 -Maximum $inputString.Length
    $result = $inputString.Insert($position, "_")

    return $result
}
function get-pw([int]$length=81) {
  $sourcedata = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray()
  for ($loop=1; $loop -le $length; $loop++) {
    $pw +=($sourcedata | get-random)
  }

  $pw = Insert-UnderscoreRandomly -inputString $pw

  return $pw
}


function get-infinitepws {
    while ($true) { sleep -seconds 1; get-pw | Set-Clipboard; write-host (Get-Clipboard) }
}
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

function resetwsl() {
    wsl -d Ubuntu -- date
    wsl --shutdown
    wsl -d Ubuntu -- date
}
