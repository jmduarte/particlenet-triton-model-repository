#!/bin/bash

# ONNX particlenet
mkdir -p model_repository/particlenet/1
wget -O model_repository/particlenet/1/model.onnx \
     https://github.com/cms-data/RecoBTag-Combined/raw/master/ParticleNetAK8/General/V01/particle-net.onnx
