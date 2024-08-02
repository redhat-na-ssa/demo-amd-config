# Demo AMD GPU OpenShift Config

[![Check Spelling](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/spellcheck.yaml/badge.svg)](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/spellcheck.yaml)

[![Linting](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/linting.yaml/badge.svg)](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/linting.yaml)

This repo is used to demo AMD GPUs and track the configuration for an OpenShift cluster via GitOps.

## Quick Start

```sh
oc apply -k bootstrap/
```

## Links

- [Operator Hub - Community AMD GPU Operator](https://github.com/yevgeny-shnaidman/amd-gpu-operator)
- [ROCm GPU Operator](https://github.com/ROCm/gpu-operator)
