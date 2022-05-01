Clear-Host
Write-Host 'ONBOARDING AUTOMATION INITIATING'

Write-Host 'Turning on Windows Subsystem for Linux'
wsl --install

Write-Host 'Installing Chocolatey package manager for Windows...'
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Clear-Host
Write-Host 'Installing .NENT SDK...'
choco install dotnetcore-sdk -y --force
choco install dotnet-5.0-sdk -y --force
choco install dotnet-6.0-sdk -y --force

Clear-Host
Write-Host 'Installing Visual Studio...'
choco install visualstudiocode -y --force 
choco install visualstudio2019enterprise  -y --force
choco install visualstudio2022enterprise -y --force

Clear-Host
Write-Host 'Installing Docker...'
choco install docker-desktop -y --force

Clear-Host
Write-Host 'Installing Terraform...'
choco install terraform -y --force

Clear-Host
Write-Host 'Installing Azure CLI...'
choco install azure-cli -y --force

Clear-Host
Write-Host 'Installing Azure Powershell...'
choco install az.powershell -y --force

Clear-Host
Write-Host 'Installing Azure SSMS...'
choco install sql-server-management-studio -y --force

Clear-Host
Write-Host 'Installing VS Extensions...'
code --install-extension ms-dotnettools.csharp
code --install-extension ms-azuretools.vscode-docker
code --install-extension yzhang.markdown-all-in-one
code --install-extension ms-azuretools.vscode-azureterraform
code --install-extension hediet.vscode-drawio

Clear-Host
Write-Host 'DOS Onboarding Complete'