#!/bin/bash

curl -k -s -X PATCH -H "Accept: application/json, */*" \
     -H "Content-Type: application/merge-patch+json" \
     http://localhost:8001/apis/ran.openshift.io/v1alpha1/namespaces/$1/clustergroupupgrades/cgu/status \
     --data '{"status":{"precaching":{"status":{"spoke1":"Succeeded","spoke2":"Succeeded","spoke5":"Succeeded"}}}}'
