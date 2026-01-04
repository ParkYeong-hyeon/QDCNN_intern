#!/bin/bash
# Experiment 0002: Ablation X

set -e

# Activate environment if needed
# source env/bin/activate

# Run training > Training logic is not implemented yet
python src/training/train.py \
    --config config.yaml \
    --experiment_dir .

# Run evaluation > Evaluation logic is not implemented yet
python src/training/eval.py \
    --config config.yaml \
    --experiment_dir .

echo "Experiment completed!"

