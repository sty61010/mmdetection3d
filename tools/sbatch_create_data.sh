#!/usr/bin/env bash
#SBATCH --account=MST111023
#SBATCH --partition=gp2d
#SBATCH --cpus-per-task=4
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1

set -x

# CONFIG=$1
# PY_ARGS=${@:2}

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
srun python3 tools/create_data.py nuscene --root-path /work/sty61010/datasets/nuscenes/v1.0-mini --version v1.0-mini --out-dir /work/sty61010/datasets/nuscenes/v1.0-mini --extra-tag nuscene
