#!/bin/bash
osdId=$1
if [[ -z "$osdId" ]]; then
        echo "Use "$(basename "$0")" osdId";
        exit 1;
fi
host=$(kubectl -n rook-ceph -o wide get pod -l ceph-osd-id=$osdId |grep $osdId |awk '{print $7}')
echo $host
hostIp=$(kubectl get nodes -o wide|grep $host|awk '{print $6}')
ssh -i ~/.ssh/maas_shared_id_rsa $hostIp 'sudo dockerd -v'
