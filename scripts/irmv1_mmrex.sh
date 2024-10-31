MIN_ALPHA_LIST=(-1e-2 -2e-2 -3e-2 -4e-2 -5e-2 -6e-2 -7e-2 -8e-2 -9e-2)

for min_alpha in "${MIN_ALPHA_LIST[@]}" ; do

    SHELL_ARGS="--l2_regularizer_weight=0.001 \
                --lr 0.01 \
                --batch_size=512 \
                --penalty_anneal_iter=80 \
                --opt=sgd \
                --print_every=1 \
                --penalty_weight=10000 \
                --steps=1000  \
                --step_gamma=0.1 \
                --dataset=ColoredObject \
                --irm_type=irmv1_mmrex \
                --var_beta=0 \
                --min_alpha=${min_alpha} \
                --wandb_project_name=ColoredObject_irmv1_mmrex \
                --wandb_entity_name=katoro13 \
                "
                
    CMD="qsub -g tge-24IJ0078 run.sh ${SHELL_ARGS}"
    echo "Exp-$((count + 1)): ${CMD}"
    eval $CMD

    count=$((count += 1))
        
done