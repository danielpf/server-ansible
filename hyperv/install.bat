set mac=00-15-5d-01-8a-0f
set username=danielf
set keyfile=~/.ssh/danielpf

for /f %%i in ('arp -a ^| findstr %mac%') do set ip=%%i
echo "ip: %ip%"
scp -i %keyfile% install.sh "%username%@%ip%:~"

ssh -t -i %keyfile% "%username%@%ip%" "sudo chmod +x install.sh && ~/install.sh"

