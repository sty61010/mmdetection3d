#!/usr/bin/env bash
#SBATCH --account=MST111023
#SBATCH --partition=gp2d
#SBATCH --cpus-per-task=4
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:2

set -x

CONFIG=$1
PY_ARGS=${@:2}

PYTHONPATH="$(dirname $0)/..":$PYTHONPATH \
srun python -u tools/train.py ${CONFIG} --launcher="slurm" ${PY_ARGS}
