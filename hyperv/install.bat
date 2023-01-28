set mac=00-15-5d-01-8a-0f
set username=danielf
set keyfile=~/.ssh/danielpf

for /f %%i in ('arp -a ^| findstr %mac%') do set ip=%%i
echo "ip: %ip%"
scp -i %keyfile% -r server-ansible "%username%@%ip%:~"

ssh -t -i %keyfile% "%username%@%ip%" "cd server-ansible && sudo apt-get install dos2unix && dos2unix ./hyperv/install.sh && ./hyperv/install.sh"

