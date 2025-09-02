# 10-Day PowerShell Fileless Malware Simulation Course

This course is designed to give researchers hands-on experience with **fileless malware simulation** using PowerShell — focusing on techniques attackers abuse, but applied ethically with **benign payloads** for detection and defense research.

⚠️ Disclaimer: This course is for **educational and research purposes only**. Do not weaponize or deploy malicious code.

---

## Week 1 – Core Techniques & Environment

### **Day 1 – PowerShell Fundamentals for Security Research**
- PowerShell objects, pipelines, variables, and functions.
- Secure script execution (`Set-ExecutionPolicy`).
- **Lab:** Set up a Windows VM and a local HTTP server (e.g., Python `http.server`).
- Write a script that prints system info using `Get-Process` and `Get-Service`.

🔗 References:  
- [Microsoft PowerShell Docs](https://learn.microsoft.com/powershell)  
- [PowerShell Scripting Guide](https://ss64.com/ps/)  

---

### **Day 2 – Networking Basics with PowerShell**
- `Invoke-WebRequest`, `Invoke-RestMethod` for HTTP communication.
- **Lab:** Download a benign text/config file from your server.

🔗 References:  
- [Invoke-WebRequest](https://learn.microsoft.com/powershell/module/microsoft.powershell.utility/invoke-webrequest)  
- [Invoke-RestMethod](https://learn.microsoft.com/powershell/module/microsoft.powershell.utility/invoke-restmethod)  

---

### **Day 3 – Process & Memory Interaction**
- Using `Get-Process`, `Start-Process`, `Stop-Process`.
- Basics of memory inspection with PowerShell and .NET classes.
- **Lab:** Monitor processes and log anomalies.

🔗 References:  
- [Get-Process](https://learn.microsoft.com/powershell/module/microsoft.powershell.management/get-process)  
- [Memory Forensics Blog by SANS](https://www.sans.org/blog/windows-memory-forensics/)  

---

## Week 2 – Fileless Simulation & C2 Concepts

### **Day 4 – In-Memory Script Execution**
- `IEX (Invoke-Expression)` and why attackers abuse it.
- Base64-encoded scripts and safe usage for research.
- **Lab:** Execute a harmless PowerShell snippet fully in memory.

🔗 References:  
- [Red Canary – PowerShell Abuse](https://redcanary.com/blog/powershell/)  
- [Invoke-Expression](https://learn.microsoft.com/powershell/module/microsoft.powershell.utility/invoke-expression)  

---

### **Day 5 – Simulating Downloader Behavior**
- Staged vs. stageless payload concepts (study via MITRE ATT&CK, Empire docs).
- **Lab:** Script that checks your server for an update file and runs it in-memory.

🔗 References:  
- [MITRE ATT&CK – T1059.001 PowerShell](https://attack.mitre.org/techniques/T1059/001/)  
- [Empire Framework (Docs Only)](https://bc-security.gitbook.io/empire-wiki/)  

---

### **Day 6 – Simulating C2-Like Communication**
- HTTP request/response loops and beaconing (`Start-Sleep`).
- **Lab:** Script that sends system info (hostname, uptime) to your server every minute.

🔗 References:  
- [Cobalt Strike C2 Concepts (Docs)](https://www.cobaltstrike.com/help-beacons)  
- [TrickBot C2 Analysis – Mandiant](https://www.mandiant.com/resources/blog/trickbot-now-a-credential-stealer-and-backdoor)  

---

### **Day 7 – System Info Collection & Logging**
- Commands: `systeminfo`, `tasklist`, `Get-WmiObject`.
- Redirecting outputs to HTTP POST (mock exfiltration).
- **Lab:** Upload system info logs to your server.

🔗 References:  
- [systeminfo command](https://learn.microsoft.com/windows-server/administration/windows-commands/systeminfo)  
- [WMIC Documentation](https://learn.microsoft.com/windows/win32/wmisdk/wmi-start-page)  

---

## Week 3 – Encryption, Obfuscation & Detection

### **Day 8 – Cryptography with PowerShell**
- Using `.NET System.Security.Cryptography` classes.  
- AES, RSA basics for file encryption/decryption.  
- **Lab:** Script to encrypt and decrypt benign text files.  

🔗 References:  
- [AES with PowerShell](https://learn.microsoft.com/dotnet/api/system.security.cryptography.aes)  
- [RSA Cryptography](https://learn.microsoft.com/dotnet/api/system.security.cryptography.rsacryptoserviceprovider)  

---

### **Day 9 – Obfuscation Techniques (Research-Only)**
- Base64, XOR, and `-EncodedCommand`.  
- Why defenders flag these techniques.  
- **Lab:** Write scripts that encode/decode benign strings in different formats.  

🔗 References:  
- [MITRE ATT&CK – Obfuscated Files or Information](https://attack.mitre.org/techniques/T1027/)  
- [FireEye on PowerShell EncodedCommand Abuse](https://www.mandiant.com/resources/blog/powershell-encodedcommand)  

---

### **Day 10 – Capstone Project**
- Combine networking + memory + encryption.  
- Build a **Research-Safe Fileless Simulation Toolkit**:  
  - Downloads benign snippets in-memory.  
  - Sends system info to server.  
  - Encrypts/decrypts sample files.  
- Document attacker behaviors and detection opportunities.  

🔗 References:  
- [MITRE ATT&CK – Execution Tactics](https://attack.mitre.org/tactics/TA0002/)  
- [PowerShell Empire Wiki](https://bc-security.gitbook.io/empire-wiki/)  

---

## 📚 Extra Reading
- [SANS DFIR Blog](https://www.sans.org/blog/)  
- [Red Canary Threat Detection Reports](https://redcanary.com/threat-detection-report/)  
- [Malware Archaeology (Cheat Sheets)](https://www.malwarearchaeology.com/cheat-sheets)  

---

✅ By the end of this course, you will be equipped to **simulate fileless malware techniques safely**, understand attacker tradecraft, and build **detection-focused defenses**.
