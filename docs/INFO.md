# General Notes

## AMD kernel module logs

```sh
oc describe node os-wf2-07.cluster1.sandbox284.opentlc.com
```

```sh
Allocatable:
  amd.com/gpu:        0
```

```sh
lsmod | grep amd
dmesg | grep amd
```

```sh
amdgpu              12054528  0
amddrm_ttm_helper      16384  1 amdgpu
amdttm                 90112  2 amdgpu,amddrm_ttm_helper
amdxcp                 16384  1 amdgpu
amddrm_buddy           20480  1 amdgpu
amd_sched              53248  1 amdgpu
amdkcl                 49152  3 amd_sched,amdttm,amdgpu
drm_display_helper    172032  1 amdgpu
i2c_algo_bit           16384  2 mgag200,amdgpu
drm_kms_helper        192512  5 drm_display_helper,mgag200,amdgpu
drm                   581632  12 drm_kms_helper,amd_sched,amdttm,drm_shmem_helper,drm_display_helper,mgag200,amdgpu,amddrm_buddy,amdkcl,amddrm_ttm_helper,amdxcp

[  117.108913] amdkcl: loading out-of-tree module taints kernel.
[  117.108966] amdkcl: module verification failed: signature and/or required key missing - tainting kernel
[  119.537489] [drm] amdgpu kernel modesetting enabled.
[  119.537493] [drm] amdgpu version: 6.7.0
[  119.538008] amdgpu: Virtual CRAT table created for CPU
[  119.538023] amdgpu: Topology: Add CPU node
[  119.552449] amdgpu 0000:1b:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.552598] amdgpu 0000:1b:00.0: amdgpu: Fetched VBIOS from platform
[  119.552601] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.553346] amdgpu 0000:1b:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.553349] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.554424] amdgpu 0000:1b:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.554427] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.555403] amdgpu 0000:1b:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.555406] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.556398] amdgpu 0000:1b:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.556404] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.557340] amdgpu 0000:1b:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.557604] amdgpu 0000:1b:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.557607] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.558569] amdgpu 0000:1b:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.558789] amdgpu 0000:1b:00.0: amdgpu: Fatal error during GPU init
[  119.559439] amdgpu 0000:1b:00.0: amdgpu: amdgpu: finishing device.
[  119.559527] amdgpu: legacy kernel without apple_gmux_detect()
[  119.590241] amdgpu 0000:3d:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.590381] amdgpu 0000:3d:00.0: amdgpu: Fetched VBIOS from platform
[  119.590383] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.590412] amdgpu 0000:3d:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.590414] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.591369] amdgpu 0000:3d:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.591371] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.592285] amdgpu 0000:3d:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.592288] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.593179] amdgpu 0000:3d:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.593182] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.594212] amdgpu 0000:3d:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.594453] amdgpu 0000:3d:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.594454] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.595274] amdgpu 0000:3d:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.595508] amdgpu 0000:3d:00.0: amdgpu: Fatal error during GPU init
[  119.596097] amdgpu 0000:3d:00.0: amdgpu: amdgpu: finishing device.
[  119.626269] amdgpu 0000:4e:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.626409] amdgpu 0000:4e:00.0: amdgpu: Fetched VBIOS from platform
[  119.626411] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.626436] amdgpu 0000:4e:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.626438] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.627286] amdgpu 0000:4e:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.627288] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.628136] amdgpu 0000:4e:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.628138] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.629117] amdgpu 0000:4e:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.629120] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.630054] amdgpu 0000:4e:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.630296] amdgpu 0000:4e:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.630297] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.631114] amdgpu 0000:4e:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.631337] amdgpu 0000:4e:00.0: amdgpu: Fatal error during GPU init
[  119.631995] amdgpu 0000:4e:00.0: amdgpu: amdgpu: finishing device.
[  119.661648] amdgpu 0000:5f:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.661788] amdgpu 0000:5f:00.0: amdgpu: Fetched VBIOS from platform
[  119.661789] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.661815] amdgpu 0000:5f:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.661816] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.662708] amdgpu 0000:5f:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.662710] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.663491] amdgpu 0000:5f:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.663494] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.664265] amdgpu 0000:5f:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.664268] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.665036] amdgpu 0000:5f:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.665283] amdgpu 0000:5f:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.665285] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.666008] amdgpu 0000:5f:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.666234] amdgpu 0000:5f:00.0: amdgpu: Fatal error during GPU init
[  119.666789] amdgpu 0000:5f:00.0: amdgpu: amdgpu: finishing device.
[  119.681193] amdgpu 0000:9d:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.681383] amdgpu 0000:9d:00.0: amdgpu: Fetched VBIOS from platform
[  119.681386] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.681423] amdgpu 0000:9d:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.681425] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.682301] amdgpu 0000:9d:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.682303] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.683205] amdgpu 0000:9d:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.683207] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.683989] amdgpu 0000:9d:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.683994] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.684778] amdgpu 0000:9d:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.685036] amdgpu 0000:9d:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.685037] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.685825] amdgpu 0000:9d:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.686051] amdgpu 0000:9d:00.0: amdgpu: Fatal error during GPU init
[  119.686471] amdgpu 0000:9d:00.0: amdgpu: amdgpu: finishing device.
[  119.700553] amdgpu 0000:bd:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.700744] amdgpu 0000:bd:00.0: amdgpu: Fetched VBIOS from platform
[  119.700745] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.700773] amdgpu 0000:bd:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.700775] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.701570] amdgpu 0000:bd:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.701573] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.702281] amdgpu 0000:bd:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.702283] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.702985] amdgpu 0000:bd:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.702988] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.703744] amdgpu 0000:bd:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.703994] amdgpu 0000:bd:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.703996] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.704729] amdgpu 0000:bd:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.704946] amdgpu 0000:bd:00.0: amdgpu: Fatal error during GPU init
[  119.705347] amdgpu 0000:bd:00.0: amdgpu: amdgpu: finishing device.
[  119.719710] amdgpu 0000:cd:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.719896] amdgpu 0000:cd:00.0: amdgpu: Fetched VBIOS from platform
[  119.719898] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.719924] amdgpu 0000:cd:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.719925] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.720736] amdgpu 0000:cd:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.720739] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.721409] amdgpu 0000:cd:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.721412] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.722086] amdgpu 0000:cd:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.722090] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.722818] amdgpu 0000:cd:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.723056] amdgpu 0000:cd:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.723057] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.723775] amdgpu 0000:cd:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.723999] amdgpu 0000:cd:00.0: amdgpu: Fatal error during GPU init
[  119.724369] amdgpu 0000:cd:00.0: amdgpu: amdgpu: finishing device.
[  119.738493] amdgpu 0000:dd:00.0: BAR 6: can't assign [??? 0x00000000 flags 0x20000000] (bogus alignment)
[  119.738680] amdgpu 0000:dd:00.0: amdgpu: Fetched VBIOS from platform
[  119.738681] amdgpu: ATOM BIOS: 113-MI3SRIOV-001
[  119.738707] amdgpu 0000:dd:00.0: Direct firmware load for amdgpu/psp_13_0_6_sos.bin failed with error -2
[  119.738708] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <psp> failed -19
[  119.739435] amdgpu 0000:dd:00.0: Direct firmware load for amdgpu/smu_13_0_6.bin failed with error -2
[  119.739437] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <smu> failed -19
[  119.740111] amdgpu 0000:dd:00.0: Direct firmware load for amdgpu/gc_9_4_3_rlc.bin failed with error -2
[  119.740113] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <gfx_v9_4_3> failed -19
[  119.740882] amdgpu 0000:dd:00.0: Direct firmware load for amdgpu/sdma_4_4_2.bin failed with error -2
[  119.740885] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <sdma_v4_4_2> failed -19
[  119.741579] amdgpu 0000:dd:00.0: [drm:vcn_v4_0_3_early_init [amdgpu]] VCN decode is enabled in VM mode
[  119.741822] amdgpu 0000:dd:00.0: Direct firmware load for amdgpu/vcn_4_0_3.bin failed with error -2
[  119.741824] [drm:amdgpu_device_ip_early_init [amdgpu]] *ERROR* early_init of IP block <vcn_v4_0_3> failed -19
[  119.742446] amdgpu 0000:dd:00.0: [drm:jpeg_v4_0_3_early_init [amdgpu]] JPEG decode is enabled in VM mode
[  119.742689] amdgpu 0000:dd:00.0: amdgpu: Fatal error during GPU init
[  119.743054] amdgpu 0000:dd:00.0: amdgpu: amdgpu: finishing device.
```

```sh
oc -n openshift-amd-gpu get pods
```

```sh
amd-gpu-operator-controller-manager-7b777dcf56-n2zfd   2/2     Running   0          9h
dc-internal-registry-device-plugin-6cw88-lqvs6         1/1     Running   0          8h
dc-internal-registry-node-labeller-x5wlp               1/1     Running   0          8h
dc-internal-registry-node-metrics-6bqln                1/1     Running   0          8h
```

```sh
oc -n openshift-amd-gpu logs dc-internal-registry-device-plugin-6cw88-lqvs6
```

```sh
I0730 10:53:51.179074       1 main.go:305] AMD GPU device plugin for Kubernetes
I0730 10:53:51.179140       1 main.go:305] ./k8s-device-plugin version v1.25.2.7-10-g736a6ef
I0730 10:53:51.179144       1 main.go:305] hwloc: _VERSION: 2.10.0, _API_VERSION: 0x00020800, _COMPONENT_ABI: 7, Runtime: 0x00020800
I0730 10:53:51.179151       1 manager.go:42] Starting device plugin manager
I0730 10:53:51.179156       1 manager.go:46] Registering for system signal notifications
I0730 10:53:51.179386       1 manager.go:52] Registering for notifications of filesystem changes in device plugin directory
I0730 10:53:51.179501       1 manager.go:60] Starting Discovery on new plugins
I0730 10:53:51.179509       1 manager.go:66] Handling incoming signals
```

Get storage on nodes

```sh
for node in $(oc get node -oname); do echo $node; oc debug $node -q -- chroot /host lsblk 2>&1 | sed 's/^/  /'; done
```