# mobilefacenet-V2

now we get more higher accuray:


[lfw][12000]Accuracy-Flip: 0.99667+-0.00358  
[agedb_30][12000]Accuracy-Flip: 0.96667+-0.00167 use my modified mobilenet network.

lr-batch-epoch: 0.01 11738 1
testing verification..
(12000, 512)
infer time 39.129495
[lfw][36000]XNorm: 22.729305
[lfw][36000]Accuracy-Flip: 0.99667+-0.00358



improve the accuracy of mobilefacenet 
in paper mobilefacenet论文(https://arxiv.org/abs/1804.07573) 

First step training (use softmax to pretrain): 
train softmax(facenet):

[lfw][62000]XNorm: 23.029881
[lfw][62000]Accuracy-Flip: 0.99383+-0.00308
testing verification..
(14000, 512)
infer time 20.121058
[cfp_fp][62000]XNorm: 24.043967
[cfp_fp][62000]Accuracy-Flip: 0.89343+-0.01705
testing verification..
(12000, 512)
infer time 16.860138
[agedb_30][62000]XNorm: 23.566453
[agedb_30][62000]Accuracy-Flip: 0.93883+-0.01675
saving 31
INFO:root:Saved checkpoint to "../models/MF/model-y1-softmax12-0031.params"


pretrained models:
https://pan.baidu.com/s/1xBq9FoL79z7K892aFWkmFw


Second step:
CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4 --margin-s [128] --lr-steps 120000,180000,210000,230000 --emb-size [512] --per-batch-size 150 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MobileFaceNet/model-y1-softmax,20 --prefix ../models/MF/model-y1-arcface

Third step:
CUDA_VISIBLE_DEVICES='0,1' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4  --lr 0.001 --lr-steps 40000,60000,70000 --wd 0.00004 --fc7-wd-mult 10 --emb-size 512 --per-batch-size 150 --margin-s 64 --data-dir ../data/faces_ms1m_112x112 --pretrained ../models/MF/model-y1-arcface,46 --prefix ../models/MF/model-y1-arcface

Update wd=0.00001 , --fc7-wd-mult 10 --emb-size 512
i get new Accuracy:
###### Accuracy
| dbname | accuracy |
| ----- |:-----:|
| lfw |0.996233|
| cfp_fp |0.94300|
| age_db30 |0.96383|


##########first
#CUDA_VISIBLE_DEVICES='0' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4   --lr 0.1 --emb-size 512 --per-batch-size 240 --margin-s 64 --wd 0.00001 --fc7-wd-mult 10 --data-dir /Users/sunyimac/faces_emore --pretrained ../models/MobileFaceNet/model-y1-arcfaced,18 --prefix ../models/MobileFaceNet/model-y1-arcface

#CUDA_VISIBLE_DEVICES='0' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4   --lr 0.01 --emb-size 512 --per-batch-size 240 --margin-s 64 --wd 0.00001 --fc7-wd-mult 10 --data-dir /Users/sunyimac/faces_emore --pretrained ../models/MobileFaceNet/model-y1-arcface,62 --prefix ../models/MobileFaceNet/model-y1-arcfaced

CUDA_VISIBLE_DEVICES='0' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4   --lr 0.00001 --emb-size 512 --per-batch-size 240  --wd 0.00001 --fc7-wd-mult 10 --data-dir /Users/sunyimac/faces_emore --pretrained ../models/MobileFaceNet/model-y1-arcface,75 --prefix ../models/MobileFaceNet/model-y1-arcfaced

Update wd=0.000001 trainning is not end. now is the new Accuracy:
i get new higher Accuracy:
###### Accuracy
| dbname | accuracy |
| ----- |:-----:|
| lfw |0.99667|
| cfp_fp |0.94300|
| age_db30 |0.96700|

Update wd=0.0000001 trainning is not end. now is the new Accuracy:
i get new higher Accuracy:
###### Accuracy
| dbname | accuracy |
| ----- |:-----:|
| lfw |0.99683|
| cfp_fp |0.94500|
| age_db30 |0.96717|
