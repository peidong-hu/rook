#!/bin/bash
osdId=$1
if [[ -z "$osdId" ]]; then
        echo "Use "$(basename "$0")" cephMonitorPodName";
        exit 1;
fi

kubectl -n rook-ceph -o wide get pod |grep $(kubectl logs --tail=20 $osdId -n rook-ceph |grep timeout |tail -n -1 |awk '{print $17}')
