# particlenet-triton-model-repository

- Triton Setup
```bash
# see: https://github.com/triton-inference-server/server/blob/master/docs/quickstart.md
docker pull nvcr.io/nvidia/tritonserver:20.06-py3
git clone git@github.com:jmduarte/particlenet-triton-model-repository
cd particlenet-triton-model-repository/
source fetch_model.sh
docker run --gpus=1 --rm -p8000:8000 -p8001:8001 -p8002:8002 -v/full/path/to/particlenet-triton-model-repository/model_repository:/models nvcr.io/nvidia/tritonserver:20.06-py3 tritonserver --model-repository=/models
```

- CMSSW Setup
```bash
cmsrel CMSSW_12_0_0_pre2
cd CMSSW_12_0_0_pre2/src
cmsenv
git cms-init
git cms-addpkg RecoBTag/Combined
git cms-checkout-topic jmduarte:noragged
git clone git@github.com:jmduarte/RecoBTag-Combined RecoBTag/Combined/data -b noragged
scram b -j 12
cd RecoBTag/ONNXRuntime/test
cmsRun test_particle_net_cfg.py
python plot_particle_net.py
```
