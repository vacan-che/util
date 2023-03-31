network="192.168.100"
for addr in {1..255}; do
    ping -c 1 -W 1 "${network}.${addr}" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "192.168.100.${addr} is up"
    else 
        echo "192.168.100.${addr} is down"
    fi
done
