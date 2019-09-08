ssh -i ~/.ssh/maas_shared_id_rsa $(./getTimedOutOsd.sh | awk '{print $7}') 'sudo dockerd -v'
