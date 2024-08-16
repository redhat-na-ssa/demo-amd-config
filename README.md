# Demo AMD GPU OpenShift Config

[![Check Spelling](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/spellcheck.yaml/badge.svg)](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/spellcheck.yaml)

[![Linting](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/linting.yaml/badge.svg)](https://github.com/redhat-na-ssa/demo-amd-config/actions/workflows/linting.yaml)

This repo is used to demo AMD GPUs and track the configuration for an OpenShift cluster via GitOps.

## Quick Start

Apply cluster config

NOTE: you may have to run the following command more than once in order apply CRDs that may not be initially present

```sh
oc apply -k bootstrap/
```

Only AMD GPU config

```sh
oc apply -k bootstrap/00-amd-config/
oc apply -k bootstrap/00-install-operators/
```

Deploy ROCm vLLM

```sh
oc apply -k components/app-configs/rocm-vllm/
```

Encrypt / Decrypt htpasswd w/ `age`

```sh
. scripts/function.sh

# get htpasswd from ocp
htpasswd_get_file

# encrypt
htpasswd_encrypt_file

# decrypt
htpasswd_decrypt_file
```

## Links

- [Operator Hub - Community AMD GPU Operator](https://github.com/yevgeny-shnaidman/amd-gpu-operator)
- [ROCm GPU Operator](https://github.com/ROCm/gpu-operator)
- [ROCm vLLM Example](https://github.com/redhat-na-ssa/demo-amd-vllm)
