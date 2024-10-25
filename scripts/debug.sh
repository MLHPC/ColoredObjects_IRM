SHELL_ARGS="--l2_regularizer_weight=0.001 \
            --lr 0.005 \
            --batch_size=1000 \
            --penalty_anneal_iter=80 \
            --opt=sgd \
            --print_every=10 \
            --penalty_weight=10000 \
            --steps=800  \
            --step_gamma=0.1 \
            --dataset=ColoredObject \
            --irm_type=irmv1_vrex \
            --var_beta=0.5 \
            "
            
CMD="qsub -g tge-24IJ0078 run.sh ${SHELL_ARGS}"
echo "Exp-$((count + 1)): ${CMD}"
eval $CMD

count=$((count += 1))
        