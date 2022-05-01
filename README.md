# Technical Onboarding Template

Inspiration for company, team, or project based technical onboarding with a single command to set up a windows machine for software development in C# .NET. 

## Milestones

- [ ] Add template
- [ ] Provide examples
- [ ] Create directions
- [x] Create quick start script

---

`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/dvdmrk/technical-onboarding-template/main/installations.ps1'))`