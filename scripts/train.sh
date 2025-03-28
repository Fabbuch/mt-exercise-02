#! /bin/bash

scripts=$(dirname "$0")
base=$(realpath $scripts/..)

models=$base/models
data=$base/data
tools=$base/tools

mkdir -p $models

num_threads=4
device=""

SECONDS=0

(cd $tools/pytorch-examples/word_language_model &&
    CUDA_VISIBLE_DEVICES=$device OMP_NUM_THREADS=$num_threads python main.py --data $data/reuters \
        --epochs 40 \
        --log-interval 85 \
        --emsize 200 --nhid 200 --dropout 0 --tied \
        --save $models/model_00.pt \
        --mps \
        --log-ppl "$base/ppl_log.csv"
)

echo "time taken:"
echo "$SECONDS seconds"