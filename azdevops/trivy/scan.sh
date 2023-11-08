#!/bin/bash
#scan
trivy image --exit-code 1 --severity=HIGH,CRITICAL nginx > test.out
trivy image --exit-code 0 --severity MEDIUM,HIGH ruby:2.4.0
trivy image --exit-code 1 --severity CRITICAL ruby:2.4.0 
value="$(grep -i 'total' test.out | awk '{print $2}')"

if [ $value -eq 0 ]
then
        echo "No Vulnerabilities with High and Critical serverity and we are good to proceed with docker image push to the target AWS ECR repo"
        #exit 0;
else
        #exit 1;
        echo "There were Vulnerabilities with High and Critical serverity and we are skipping the docker image push to the target AWS ECR repo, please contact the respective owners to fix the issue"
        #exit 1;
fi
