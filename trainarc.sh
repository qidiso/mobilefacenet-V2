export MXNET_CPU_WORKER_NTHREADS=24
export MXNET_CUDNN_AUTOTUNE_DEFAULT=0
export MXNET_ENGINE_TYPE=ThreadedEnginePerDevice

CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network m1 --loss-type 0 --data-dir ../data/faces_ms1m_112x112 --prefix ../model-m1-softmax
CUDA_VISIBLE_DEVICES='0' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 0 --lr 0.1  --per-batch-size 150 --emb-size 512 --fc7-wd-mult 10  --data-dir  ../data/faces_ms1m_112x112 --pretrained ../models/MF/model-y1-softmax512,29 --prefix ../models/MF/model-y1-softmax12

CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4  --lr 0.01 --lr-steps 40000,60000,70000 --wd 0.00004 --fc7-wd-mult 10 --emb-size 512 --per-batch-size 150 --margin-s 128 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MF/model-y1-arcfaceredodod,79 --prefix ../models/MF/model-y1-arcfaceredododo


CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4  --lr 0.001 --lr-steps 40000,60000,70000 --wd 0.00004 --fc7-wd-mult 10 --emb-size 512 --per-batch-size 150 --margin-s 64 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MF/model-y1-arcfaceredododo,46 --prefix ../models/MF/model-y1-arcfaceredododod

CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4  --lr 0.001 --lr-steps 40000,60000,70000 --wd 0.00004 --fc7-wd-mult 10 --emb-size 512 --per-batch-size 150 --margin-s 64 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MF/model-y1-arcfaceredododod,5 --prefix ../models/MF/model-y1-arcfaceredodododo
#CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4  --lr 0.0001  --wd 0.00004 --fc7-wd-mult 10 --emb-size 512 --per-batch-size 150 --margin-s 64 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MF/model-y1-arcfaceredodododo,6 --prefix ../models/MF/model-y1-arcfaceredodododod
#CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network m1 --loss-type 12 --lr 0.005 --mom 0.0 --per-batch-size 150 --fc7-wd-mult 10 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MobileFaceNet/model-y1-softmax,55 --prefix ../models/MobileFaceNet/model-y1-triplet

#CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 0 --per-batch-size 150 --emb-size 128 --fc7-wd-mult 10  --data-dir  ../data/faces_ms1m_112x112   --prefix ../models/MobileFaceNet/model-y1-softmax
#CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4 --lr-steps 120000,180000,210000,230000 --emb-size 128 --per-batch-size 150 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MobileFaceNet/model-y1-softmax,20 --prefix ../models/MobileFaceNet/model-y1-arcface

#CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4 --lr 0.001 --lr-steps 40000,60000,70000 --wd 0.00004 --fc7-wd-mult 10 --emb-size 128 --per-batch-size 150 --margin-s 128 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MobileFaceNet/model-y1-arcface,117 --prefix ../models/MobileFaceNet/model-y1-arcface
#


#CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4 --lr 0.001  --wd 0.00004 --fc7-wd-mult 10 --emb-size 128 --per-batch-size 150 --margin-s 64 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MobileFaceNet/model-y1-arcface,23 --prefix ../models/MobileFaceNet/model-y1-arcface
