network="192.168.100"
for addr in {1..255}; do
    ping -c 1 -W 1 "${network}.${addr}" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        mac=$(arp "${network}.${addr}" | awk '{print $3}')
        echo "${network}.${addr} is up (MAC address: ${mac})"
    fi
done
