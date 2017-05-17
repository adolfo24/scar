#! /bin/bash

# SCAR - Serverless Container-aware ARchitectures
# Copyright (C) GRyCAP - I3M - UPV 
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PROFILE="alucloud00"

echo 'Re-creating deployment package'
./00-create-deployment-package.sh

aws lambda update-function-code \
--function-name scarsupervisor \
--region us-east-1 \
--zip-file fileb://`pwd`/scarsupervisor.zip \
--profile ${PROFILE} 