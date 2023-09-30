#!/bin/bash

# List of information gathering tools by category
network_scanners=("nmap" "masscan" "unicornscan" "netcat" "netdiscover" "fping" "xprobe2")
sniffers_analyzers=("wireshark" "tcpdump" "ettercap" "ngrep" "driftnet" "chaosreader" "hexinject" "etherape")
web_scanners=("nikto" "vega" "arachni" "burp" "grabber" "sublist3r" "amass")
osint_tools=("censys" "foca" "skiptracer" "spaghetti" "tinfoleak" "zoomeye")
wireless_tools=("wifiphisher" "bully" "bluelog" "bluetoothctl" "bluemaho")
dns_tools=("dnsrecon" "dnswalk" "dnsmap" "bluto" "fierce2" "dnsenum")
social_engineering=("socialfish" "reelphish" "evilginx2" "setoolkit" "gophish")
vulnerability_scanners=("nikto" "openvas" "vulnwhisperer" "cve-search" "w3af" "skipfish")
exploitation_frameworks=("metasploit" "beef" "routersploit" "empire" "crackmapexec" "veil" "msfvenom")
traffic_analysis=("bro" "suricata" "moloch" "silk")
miscellaneous=("wifite2" "hydra" "snmpenum" "smtp-user-enum" "webshag" "sslscan" "hostapd" "netstat" "ss" "ping" "iptraf" "bmon" "speedtest-cli" "john")
password_crackers=("hashcat" "ophcrack" "cewl" "johnny")
forensics_tools=("autopsy" "sleuthkit" "volatility" "ddrescue" "photorec" "bulk_extractor")
metadata_analyzers=("exiftool" "foremost" "binwalk" "steghide")
voip_analysis=("voiphopper" "voipong" "sipcrack" "sipdump")
database_audit=("sqlmap" "sqldict" "tnscmd10g" "hexorbase" "nosqlmap")
iot_tools=("shodan" "iotop" "rfcat" "firmwalker" "zigdiggity")
wireless_attacks=("mdk3" "airgeddon" "fluxion" "crackle" "ghost-phisher")
social_media=("twint" "sherlock" "osintgram" "userrecon" "gitrob")
forensic_frameworks=("the_silver_searcher" "recoll" "rifiuti2")
binary_analysis=("radare2" "gdb" "binaryninja" "ida")
network_defense=("snort" "osquery" "bro" "suricata" "fail2ban" "wazuh")
threat_intelligence=("maltego" "misp" "threatconnect" "threathunter-playbook")
wireless_analysis=("kismet" "aircrack-ng" "wifi-honey" "horst")
reverse_engineering=("ghidra" "angr" "binvis" "radare2")
iot_security=("firmwalker" "mirai" "shikra" "iot-firmware-analysis")
malware_analysis=("yara" "volatility" "cuckoo" "capa" "peepdf" "mcafee-epo")
web_application_security=("burp" "zap" "sqlmap" "wpscan" "owasp-zap")
threat_hunting=("bro" "elk" "yara" "sigma" "cuckoo")
password_cracking=("hashcat" "john" "cewl" "hydra" "patator")

# Function to check if a tool is installed
is_installed() {
    which "$1" > /dev/null 2>&1
    return $?
}

# Function to print category and its tools
print_category() {
    local category_name="$1"
    shift
    local tools=("$@")

    # Filter out tools that aren't installed
    local installed_tools=()
    for tool in "${tools[@]}"; do
        if is_installed "$tool"; then
            installed_tools+=("$tool")
        fi
    done

    # Only print category if there are installed tools
    if [ ${#installed_tools[@]} -ne 0 ]; then
        echo "$category_name:"
        for tool in "${installed_tools[@]}"; do
            echo "  - $tool"
        done
        echo ""
    fi
}

# Print each category
print_category "Network Scanners" "${network_scanners[@]}"
print_category "Sniffers & Analyzers" "${sniffers_analyzers[@]}"
print_category "Web Scanners" "${web_scanners[@]}"
print_category "OSINT Tools" "${osint_tools[@]}"
print_category "Wireless Tools" "${wireless_tools[@]}"
print_category "DNS Tools" "${dns_tools[@]}"
print_category "Social Engineering Tools" "${social_engineering[@]}"
print_category "Vulnerability Scanners" "${vulnerability_scanners[@]}"
print_category "Exploitation Frameworks" "${exploitation_frameworks[@]}"
print_category "Traffic Analysis Tools" "${traffic_analysis[@]}"
print_category "Miscellaneous Tools" "${miscellaneous[@]}"
print_category "Password Crackers" "${password_crackers[@]}"
print_category "Forensics Tools" "${forensics_tools[@]}"
print_category "Metadata Analyzers" "${metadata_analyzers[@]}"
print_category "VoIP Analysis Tools" "${voip_analysis[@]}"
print_category "Database Audit Tools" "${database_audit[@]}"
print_category "IoT Tools" "${iot_tools[@]}"
print_category "Wireless Attacks Tools" "${wireless_attacks[@]}"
print_category "Social Media Tools" "${social_media[@]}"
print_category "Forensic Frameworks" "${forensic_frameworks[@]}"
print_category "Binary Analysis Tools" "${binary_analysis[@]}"
print_category "Network Defense Tools" "${network_defense[@]}"
print_category "Threat Intelligence Tools" "${threat_intelligence[@]}"
print_category "Wireless Analysis Tools" "${wireless_analysis[@]}"
print_category "Reverse Engineering Tools" "${reverse_engineering[@]}"
print_category "IoT Security Tools" "${iot_security[@]}"
print_category "Malware Analysis Tools" "${malware_analysis[@]}"
print_category "Web Application Security Tools" "${web_application_security[@]}"
print_category "Threat Hunting Tools" "${threat_hunting[@]}"
print_category "Password Cracking Tools" "${password_cracking[@]}"
