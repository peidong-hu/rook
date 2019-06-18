kubectl -n rook-ceph patch cephclusters.ceph.rook.io rook-ceph -p '{"metadata":{"finalizers": []}}' --type=merge
1275  kubectl -n rook-ceph delete cephcluster rook-ceph
 1283  kubectl delete namespace rook-ceph
 1286  kubectl -n rook-ceph delete cephcluster rook-ceph
 1287  kubectl delete namespace rook-ceph
 1288  kubectl delete rolebinding rook-ceph-mgr-system -n rook-ceph-system
 1297  kubectl delete pod rook-ceph-mon-a-67c9c57558-dzz8j -n rook-ceph
 1322  kubectl -n rook-ceph delete cephcluster rook-ceph
 1323  kubectl delete namespace rook-ceph
delete folders /var/lib/rook
run releaseDisk shell
