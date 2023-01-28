set mac=00-15-5d-01-8a-0f
set username=danielf
set keyfile=~/.ssh/danielpf

arp -a ^| findstr %mac%'
for /f %%i in ('arp -a ^| findstr %mac%') do set ip=%%i
if "%ip%" == "" exit
scp -i %keyfile% -r server-ansible "%username%@%ip%:~"

ssh -t -i %keyfile% "%username%@%ip%" "cd server-ansible && sudo apt-get install dos2unix && dos2unix ./hyperv/install.sh && chmod +x ./hyperv/install.sh && ./hyperv/install.sh"

