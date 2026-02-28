# --- IDENTIFICATION ---
Nickname    relay        # 1-19 characters, no spaces
ContactInfo kubucoin@proton.me     # Required so Tor can reach you if needed
Address     127.0.0.1          # Replace with your PUBLIC static IP
PidFile     /var/run/tor/tor.pid

# --- CONNECTION ---
ORPort      443                # Port 443 is best for bypassing firewalls
ExitRelay   0                  # MUST be 0 for Middle/Guard relay
ExitPolicy  reject *:*         # Double-layer security to block exit traffic

# --- PERFORMANCE & SECURITY ---
SocksPort   0                  # Disables local proxy to save resources
ControlPort 9051               # Port for monitoring tools like Nyx
CookieAuthentication 1         # Secure access for monitoring tools
DataDirectory /var/lib/tor     # Standard location for Tor data

# --- LOGGING ---
Log notice  syslog             # Sends standard logs to your system logs
# Log notice file /var/log/tor/notices.log # Alternative: log to a file

# --- BANDWIDTH (OPTIONAL) ---
# Remove '#' to limit speed (e.g., 2 MBytes/s)
# RelayBandwidthRate  2 MBytes
# RelayBandwidthBurst 4 MBytes
