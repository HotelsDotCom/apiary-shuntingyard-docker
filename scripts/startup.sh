#!/bin/bash
# Copyright (C) 2018 Expedia Inc.
# Licensed under the Apache License, Version 2.0 (the "License");

SHUNTING_YARD_HOME=/opt/shunting-yard

[[ ! -z $SHUNTINGYARD_CONFIG_YAML ]] && echo "$SHUNTINGYARD_CONFIG_YAML"|base64 -d > ${SHUNTING_YARD_HOME}/conf/shunting-yard-config.yml

[[ -z $HEAPSIZE ]] && export HEAPSIZE=1024

source "${SHUNTING_YARD_HOME}"/conf/shunting-yard-variables.conf

exec ${SHUNTING_YARD_HOME}/bin/replicator.sh $RUN_ARGS
