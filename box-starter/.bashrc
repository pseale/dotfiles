k9s () {
  /home/linuxbrew/.linuxbrew/bin/k9s --logoless --readonly "$@"
}

k9sdanger () {
  /home/linuxbrew/.linuxbrew/bin/k9s --logoless "$@"
}

k9sunsafe () {
  /home/linuxbrew/.linuxbrew/bin/k9s --logoless "$@"
}

ii () {
  powershell.exe -Command Invoke-Item $1
}
. "$HOME/.cargo/env"

shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

sudo ntpdate ntp.ubuntu.com &

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
