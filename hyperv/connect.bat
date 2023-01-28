set mac=00-15-5d-01-8a-0f
set username=danielf
set keyfile=~/.ssh/danielpf
for /f %%i in ('arp -a ^| findstr %mac%') do set ip=%%i

echo "ip: %ip%"
ssh -t -i %keyfile% "%username%@%ip%" -o ServerAliveInterval=200



