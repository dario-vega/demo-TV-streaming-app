# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl/
#

# DeleteStream
#

cat collection.json | jq '.item[]| select(.name=="DeleteStream") | .request.body.graphql' 


cat collection-copy.json | jq '.item[]| select(.name=="DeleteStream") | .request.body.graphql' >  query.json
cat query.json

curl --location --request POST 'http://localhost:3000/' \
--header 'Content-Type: application/json' \
--data @query.json 

