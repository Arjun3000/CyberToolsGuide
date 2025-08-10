
# 🛡️ GVM Setup Practical: Feed Synchronization, Network Range & Target Creation

## ✅ Initial Setup Steps

1. **Install GVM & Setup Environment**  
   *(Assuming you already installed GVM and its dependencies)*

   ```bash
   sudo gvm-setup
   ```

   This includes:
   - Creating roles
   - Installing extensions (uuid-ossp, pgcrypto, pg-gvm)
   - Creating admin user
   - Starting feed synchronization

2. **Note Down Admin Credentials**
   - Example output:
     ```
     User created with password 'd1a58c1b-5925-430c-8d66-a7b43538e2d6'.
     ```

---

## 🌐 Find Your Network Range

1. **Check IP Address**
   ```bash
   ip a
   ```

   Example output:
   ```
   inet 192.168.203.130/24
   ```

2. **Determine Network Range (CIDR)**
   - IP: `192.168.203.130`
   - Netmask `/24`
   - **Network Range**: `192.168.203.0/24`

---

## ⚠️ Common Issue: Default Port List Not Available

If you see this error:

> **Failed to create a new Target because the default Port List is not available. This issue may be due to the feed not having completed its synchronization.**

It means feed sync isn't fully completed.

---

## 🔄 Manually Sync GVM Feeds

Run the following commands:

```bash
sudo runuser -u _gvm -- greenbone-feed-sync --type GVMD_DATA
sudo runuser -u _gvm -- greenbone-feed-sync --type SCAP
sudo runuser -u _gvm -- greenbone-feed-sync --type CERT
sudo runuser -u _gvm -- greenbone-feed-sync --type NOTUS
sudo runuser -u _gvm -- greenbone-feed-sync --type NVT
```

---

## ✅ Check Sync Status

```bash
sudo gvm-check-setup
```

---

## 🔄 Restart GVM Services

```bash
sudo gvm-stop
sudo gvm-start
```

---

## 🌐 Login to GVM Web Interface

- Access via browser:
  ```
  https://127.0.0.1:9392
  ```

- Use the admin credentials created earlier.

---

## 🎯 Create a Target (Once Feeds Are Ready)

1. Go to *Configuration → Targets → New Target*
2. Enter target IP or range: `192.168.203.0/24`
3. Select Port List: `"All IANA Assigned TCP"`
