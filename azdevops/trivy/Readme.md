#!/bin/bash
$ cat .gitlab-ci.yml
stages:
  - test

trivy:
  stage: test
  image: docker:stable-git
  before_script:
    - docker build -t trivy-ci-test:${CI_COMMIT_REF_NAME} .
    - export VERSION=$(curl --silent "https://api.github.com/repos/aquasecurity/trivy/releases/latest" | grep '"tag_name":' | sed -E 's/.*"v([^"]+)".*/\1/')
    - wget https://github.com/aquasecurity/trivy/releases/download/v${VERSION}/trivy_${VERSION}_Linux-64bit.tar.gz
    - tar zxvf trivy_${VERSION}_Linux-64bit.tar.gz
  variables:
    DOCKER_DRIVER: overlay2
  allow_failure: true
  services:
    - docker:stable-dind
  script:
    - ./trivy --exit-code 0 --severity HIGH --no-progress --auto-refresh trivy-ci-test:${CI_COMMIT_REF_NAME}
    - ./trivy --exit-code 1 --severity CRITICAL --no-progress --auto-refresh trivy-ci-test:${CI_COMMIT_REF_NAME} 


https://www.bluetab.net/en/container-vulnerability-scanning-with-trivy/
https://fig.io/manual/trivy/image/--exit-code
https://blog.bajonczak.com/using-trivy-in-azure-devops/
