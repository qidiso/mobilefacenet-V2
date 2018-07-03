# mobilefacenet-V2

now we get more higher accuray:


[lfw][12000]Accuracy-Flip: 0.996233+-0.00358  
[agedb_30][12000]Accuracy-Flip: 0.96383+-0.00893 use my modified mobilenet network.


improve the accuracy of mobilefacenet 
in paper mobilefacenet论文(https://arxiv.org/abs/1804.07573) 

now i modifed to train:

batch-epoch: 0.001 11999 0
testing verification..
(12000, 512)
infer time 12.695148
[lfw][12000]XNorm: 22.189873
[lfw][12000]Accuracy-Flip: 0.99617+-0.00358
testing verification..
(14000, 512)
infer time 14.926009
[cfp_fp][12000]XNorm: 18.588222
[cfp_fp][12000]Accuracy-Flip: 0.88857+-0.01704
testing verification..
(12000, 512)
infer time 12.718514
[agedb_30][12000]XNorm: 22.106283
[agedb_30][12000]Accuracy-Flip: 0.96017+-0.00893
saving 6
INFO:root:Saved checkpoint to "../models/MF/model-y1-arcfaceredodododo-0006.params"
[12000]Accuracy-Highest: 0.96033

or

lr-batch-epoch: 0.001 1317 1
testing verification..
(12000, 512)
infer time 12.44981
[lfw][14000]XNorm: 22.190438
[lfw][14000]Accuracy-Flip: 0.99600+-0.00359
testing verification..
(14000, 512)
infer time 14.993647
[cfp_fp][14000]XNorm: 18.583859
[cfp_fp][14000]Accuracy-Flip: 0.88814+-0.01752
testing verification..
(12000, 512)
infer time 12.716178
[agedb_30][14000]XNorm: 22.115754
[agedb_30][14000]Accuracy-Flip: 0.96100+-0.00790
saving 7
INFO:root:Saved checkpoint to "../models/MF/model-y1-arcfaceredodododo-0007.params"
[14000]Accuracy-Highest: 0.96100

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
###### accuracy
| dbname | accuracy |
| ----- |:-----:|
| lfw |0.996233|
| cfp_fp |0.94300|
| age_db30 |0.96383|


##########first
#CUDA_VISIBLE_DEVICES='0' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4   --lr 0.1 --emb-size 512 --per-batch-size 240 --margin-s 64 --wd 0.00001 --fc7-wd-mult 10 --data-dir /Users/sunyimac/faces_emore --pretrained ../models/MobileFaceNet/model-y1-arcfaced,18 --prefix ../models/MobileFaceNet/model-y1-arcface

#CUDA_VISIBLE_DEVICES='0' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4   --lr 0.01 --emb-size 512 --per-batch-size 240 --margin-s 64 --wd 0.00001 --fc7-wd-mult 10 --data-dir /Users/sunyimac/faces_emore --pretrained ../models/MobileFaceNet/model-y1-arcface,62 --prefix ../models/MobileFaceNet/model-y1-arcfaced

CUDA_VISIBLE_DEVICES='0' python -u train_softmax.py --network y1 --ckpt 2 --loss-type 4   --lr 0.00001 --emb-size 512 --per-batch-size 240  --wd 0.00001 --fc7-wd-mult 10 --data-dir /Users/sunyimac/faces_emore --pretrained ../models/MobileFaceNet/model-y1-arcface,75 --prefix ../models/MobileFaceNet/model-y1-arcfaced
