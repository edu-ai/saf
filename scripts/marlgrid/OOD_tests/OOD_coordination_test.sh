#!/bin/bash

HYDRA_FULL_ERROR=1 CUDA_LAUNCH_BLOCKING=1 python run.py \
env=marlgrid \
env.name="TeamTogetherEnv" \
test_mode=True \
runner.params.checkpoint_dir="checkpoints/TeamTogetherEnv_10_2_1_saf-True-True_1" \
env.params.max_steps=50 \
env.params.coordination=2 \
env.params.heterogeneity=1 \
seed=1 \
n_agents=10 \
env_steps=50 \
env.params.num_goals=100 \
policy=saf \
policy.params.type=conv \
policy.params.activation=tanh \
policy.params.update_epochs=10 \
policy.params.num_minibatches=1 \
policy.params.learning_rate=0.0007 \
policy.params.shared_actor=False \
policy.params.shared_critic=False \
policy.params.clip_vloss=True \
runner.params.lr_decay=False \
runner.params.comet.experiment_name="OOD_coordination_test" \
latent_kl=True \
use_policy_pool=True
