#!/bin/bash
osdId=$1
if [[ -z "$osdId" ]]; then
        echo "Use "$(basename "$0")" cephMonitorPodName";
        exit 1;
fi

kubectl -n rook-ceph delete pod -l ceph-osd-id=$(kubectl logs --tail=20  $osdId -n rook-ceph |grep timeout |tail -n -1 |awk '{print $17}'|awk -F "." '{print $2}')
