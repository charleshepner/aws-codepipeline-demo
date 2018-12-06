#!/usr/bin/env bash

set -eu

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $SCRIPT_DIR

aws cloudformation deploy --template-file codepipeline.yml --stack-name codepipeline-demo

