# loxilb
A guide to LoxiLB's external cluster deployment, Grafana-based visualization, monitoring setup, and source code analysis.


## deploy

```
ansible-playbook loxilb.yaml -i <ip>, -e "lb=all id=<index> self_ip=<ip> peer_ip=<peer_ip>"
```

## grafana

```
cp llb-dashboard.json.tpl llb-dashboard.json
sed -i 's|your-uid|<uid>|g' llb-dashboard.json

cp llb-network-config.json.tpl llb-network-config.json
sed -i 's|your-uid|<uid>|g' llb-network-config.json
sed -i 's|your-master|<ip>|g' llb-network-config.json
sed -i 's|your-backup|<ip>|g' llb-network-config.json

cp llb-traffic-config.json.tpl llb-traffic-config.json
sed -i 's|your-uid|<uid>|g' llb-traffic-config.json.tpl
sed -i 's|your-master|<ip>|g' llb-traffic-config.json.tpl
sed -i 's|your-backup|<ip>|g' llb-traffic-config.json.tpl
```

