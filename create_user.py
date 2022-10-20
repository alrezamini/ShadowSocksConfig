import sys
import os
cnt = int(len(sys.argv))
dic = {}

for x in range(1,cnt,2):
    dic[sys.argv[x+1]] = str(sys.argv[x])
    
for j in dic.keys():
    os.system(f"iptables -A INPUT -p tcp --dport {j} -j ACCEPT")
    os.system(f"iptables -A INPUT -p udp --dport {j} -j ACCEPT")
    os.system(f"cat config.json > {dic[j]}.json")
    os.system(f"sed -i 's/USERNAME/{dic[j]}/g' {dic[j]}.json")
    os.system(f"sed -i 's/PORT/{j}/g' {dic[j]}.json")
