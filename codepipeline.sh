#!/usr/bin/env bash

set -eu

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR

aws-vault exec pd --no-session -- aws cloudformation deploy --template-file codepipeline.yml --stack-name chepner-codepipeline-demo --capabilities CAPABILITY_IAM

