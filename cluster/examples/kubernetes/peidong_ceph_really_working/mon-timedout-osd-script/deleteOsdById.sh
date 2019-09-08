#!/bin/bash
osdId=$1
if [[ -z "$osdId" ]]; then
        echo "Use "$(basename "$0")" osdId";
        exit 1;
fi
kubectl -n rook-ceph delete pod -l ceph-osd-id=$osdId
