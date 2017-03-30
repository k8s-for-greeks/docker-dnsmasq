# Copyright 2017 K8s For Greeks / Vorstella
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

NAME?=dnsmasq
VERSION?=v1.0
PROJECT_ID?=vorstella
PROJECT?=quay.io/${PROJECT_ID}
CONTAINER?=${PROJECT}/${NAME}

all: build

docker:
	docker build --pull -t ${CONTAINER}:${VERSION} .

build: docker

push: build
	docker push ${CONTAINER}:${VERSION}

.PHONY: all build push docker push
