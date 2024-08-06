#!/bin/bash

oc -n openshift-kmm \
  -l app.kubernetes.io/component=kmm \
  delete po
