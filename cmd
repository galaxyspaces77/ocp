# oc mirror list operators --catalogs --version=4.17
# oc mirror list operators --catalog registry.redhat.io/redhat/redhat-operator-index:v4.17
# oc-mirror init >imageset-config.yaml
# oc mirror --config=./imageset-config.yaml file://image
Quay > Create New Organization > Create Organization > Create New Repository > Create Private Repository
# cd image
# oc-mirror --from=./mirror_seq1_000000.tar docker://quay-manual.local:8443/operators/local-storage
# cd oc-mirror-workspace/results-1750258406
# vi catalogSource-cs-redhat-operator-index.yaml
# vi imageContentSourcePolicy.yaml
OCP
# oc login --token=sha256~A4jdSf2zXZwoHOUNU9n5jN5unmlE_zEp9fnN6mCyN0w --server=https://api.metal.local:6443
# oc apply -f catalogSource-cs-redhat-operator-index.yaml
# oc apply -f imageContentSourcePolicy.yaml
# oc edit operatorhubs/cluster
# oc patch OperatorHub cluster --type json -p '[{"op": "add", "path": "/spec/disableAllDefaultSources", "value": true}]'
