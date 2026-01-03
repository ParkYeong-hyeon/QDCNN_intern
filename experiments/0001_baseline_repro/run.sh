#!/bin/bash
# Experiment 0001: Baseline Reproduction

set -e

# Activate environment if needed
# source env/bin/activate

# Run training
python src/training/train.py \
    --config config.yaml \
    --experiment_dir .

# Run evaluation
python src/training/eval.py \
    --config config.yaml \
    --experiment_dir .

echo "Experiment completed!"

