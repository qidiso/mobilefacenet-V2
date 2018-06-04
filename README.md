# mobilefacenet-V2
improve the accuracy of mobilefacenet 
in paper mobilefacenet论文(https://arxiv.org/abs/1804.07573) 中精度达到LFW 95.5% agedb 95.9% now i modifed to train。i get more higher accuray。
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
INFO:root:Epoch[0] Batch [12000]	Speed: 95.51 samples/sec	acc=0.583667
INFO:root:Epoch[0] Batch [12020]	Speed: 900.32 samples/sec	acc=0.567000
INFO:root:Epoch[0] Batch [12040]	Speed: 902.95 samples/sec	acc=0.568000
INFO:root:Epoch[0] Batch [12060]	Speed: 897.62 samples/sec	acc=0.562167
INFO:root:Epoch[0] Batch [12080]	Speed: 892.06 samples/sec	acc=0.574167
INFO:root:Epoch[0] Batch [12100]	Speed: 891.81 samples/sec	acc=0.583167
INFO:root:Epoch[0] Batch [12120]	Speed: 896.45 samples/sec	acc=0.568500
INFO:root:Epoch[0] Batch [12140]	Speed: 888.76 samples/sec	acc=0.567667
INFO:root:Epoch[0] Batch [12160]	Speed: 885.97 samples/sec	acc=0.576333
INFO:root:Epoch[0] Batch [12180]	Speed: 897.05 samples/sec	acc=0.581167
INFO:root:Epoch[0] Batch [12200]	Speed: 882.57 samples/sec	acc=0.564833
INFO:root:Epoch[0] Batch [12220]	Speed: 892.05 samples/sec	acc=0.561333
INFO:root:Epoch[0] Batch [12240]	Speed: 888.45 samples/sec	acc=0.574833
INFO:root:Epoch[0] Batch [12260]	Speed: 889.89 samples/sec	acc=0.572667
INFO:root:Epoch[0] Batch [12280]	Speed: 893.97 samples/sec	acc=0.569167
INFO:root:Epoch[0] Batch [12300]	Speed: 885.04 samples/sec	acc=0.568167
INFO:root:Epoch[0] Batch [12320]	Speed: 892.96 samples/sec	acc=0.568333
INFO:root:Epoch[0] Batch [12340]	Speed: 897.19 samples/sec	acc=0.569333
INFO:root:Epoch[0] Batch [12360]	Speed: 908.35 samples/sec	acc=0.575667
INFO:root:Epoch[0] Batch [12380]	Speed: 866.30 samples/sec	acc=0.566167
INFO:root:Epoch[0] Batch [12400]	Speed: 913.48 samples/sec	acc=0.576333
INFO:root:Epoch[0] Batch [12420]	Speed: 909.13 samples/sec	acc=0.572167
INFO:root:Epoch[0] Batch [12440]	Speed: 904.95 samples/sec	acc=0.569333
INFO:root:Epoch[0] Batch [12460]	Speed: 900.43 samples/sec	acc=0.571333
INFO:root:Epoch[0] Batch [12480]	Speed: 893.12 samples/sec	acc=0.569333
INFO:root:Epoch[0] Batch [12500]	Speed: 894.84 samples/sec	acc=0.576000
INFO:root:Epoch[0] Batch [12520]	Speed: 886.59 samples/sec	acc=0.578667
INFO:root:Epoch[0] Batch [12540]	Speed: 894.88 samples/sec	acc=0.574833
INFO:root:Epoch[0] Batch [12560]	Speed: 891.66 samples/sec	acc=0.572667
INFO:root:Epoch[0] Batch [12580]	Speed: 900.54 samples/sec	acc=0.563500
INFO:root:Epoch[0] Batch [12600]	Speed: 891.63 samples/sec	acc=0.571167
INFO:root:Epoch[0] Batch [12620]	Speed: 896.71 samples/sec	acc=0.575833
INFO:root:Epoch[0] Batch [12640]	Speed: 892.11 samples/sec	acc=0.575500
INFO:root:Epoch[0] Batch [12660]	Speed: 891.87 samples/sec	acc=0.573167
INFO:root:Epoch[0] Batch [12680]	Speed: 892.96 samples/sec	acc=0.570667
INFO:root:Epoch[0] Train-acc=0.586667
INFO:root:Epoch[0] Time cost=4612.519
call reset()
INFO:root:Epoch[1] Batch [20]	Speed: 916.50 samples/sec	acc=0.576508
INFO:root:Epoch[1] Batch [40]	Speed: 919.13 samples/sec	acc=0.583667
INFO:root:Epoch[1] Batch [60]	Speed: 917.63 samples/sec	acc=0.586833
INFO:root:Epoch[1] Batch [80]	Speed: 908.24 samples/sec	acc=0.575000
INFO:root:Epoch[1] Batch [100]	Speed: 907.30 samples/sec	acc=0.576000
INFO:root:Epoch[1] Batch [120]	Speed: 909.84 samples/sec	acc=0.582167
INFO:root:Epoch[1] Batch [140]	Speed: 911.63 samples/sec	acc=0.585167
INFO:root:Epoch[1] Batch [160]	Speed: 912.84 samples/sec	acc=0.571333
INFO:root:Epoch[1] Batch [180]	Speed: 909.79 samples/sec	acc=0.575167
INFO:root:Epoch[1] Batch [200]	Speed: 911.69 samples/sec	acc=0.569667
INFO:root:Epoch[1] Batch [220]	Speed: 916.73 samples/sec	acc=0.589000
INFO:root:Epoch[1] Batch [240]	Speed: 893.30 samples/sec	acc=0.560500
INFO:root:Epoch[1] Batch [260]	Speed: 895.17 samples/sec	acc=0.585833
INFO:root:Epoch[1] Batch [280]	Speed: 888.44 samples/sec	acc=0.570333
INFO:root:Epoch[1] Batch [300]	Speed: 894.91 samples/sec	acc=0.582667
lr-batch-epoch: 0.001 317 1
INFO:root:Epoch[1] Batch [320]	Speed: 894.62 samples/sec	acc=0.579333
INFO:root:Epoch[1] Batch [340]	Speed: 889.42 samples/sec	acc=0.570000
INFO:root:Epoch[1] Batch [360]	Speed: 890.94 samples/sec	acc=0.570833
INFO:root:Epoch[1] Batch [380]	Speed: 894.83 samples/sec	acc=0.581833
INFO:root:Epoch[1] Batch [400]	Speed: 899.37 samples/sec	acc=0.580667
INFO:root:Epoch[1] Batch [420]	Speed: 891.58 samples/sec	acc=0.585167
INFO:root:Epoch[1] Batch [440]	Speed: 897.51 samples/sec	acc=0.582000
INFO:root:Epoch[1] Batch [460]	Speed: 888.70 samples/sec	acc=0.576000
INFO:root:Epoch[1] Batch [480]	Speed: 897.45 samples/sec	acc=0.581333
INFO:root:Epoch[1] Batch [500]	Speed: 898.89 samples/sec	acc=0.579500
INFO:root:Epoch[1] Batch [520]	Speed: 906.97 samples/sec	acc=0.567167
INFO:root:Epoch[1] Batch [540]	Speed: 901.21 samples/sec	acc=0.594167
INFO:root:Epoch[1] Batch [560]	Speed: 886.75 samples/sec	acc=0.578667
INFO:root:Epoch[1] Batch [580]	Speed: 892.08 samples/sec	acc=0.565833
INFO:root:Epoch[1] Batch [600]	Speed: 894.91 samples/sec	acc=0.578500
INFO:root:Epoch[1] Batch [620]	Speed: 897.34 samples/sec	acc=0.572333
INFO:root:Epoch[1] Batch [640]	Speed: 894.31 samples/sec	acc=0.599000
INFO:root:Epoch[1] Batch [660]	Speed: 889.38 samples/sec	acc=0.576000
INFO:root:Epoch[1] Batch [680]	Speed: 894.07 samples/sec	acc=0.572167
INFO:root:Epoch[1] Batch [700]	Speed: 892.43 samples/sec	acc=0.582500
INFO:root:Epoch[1] Batch [720]	Speed: 889.27 samples/sec	acc=0.578833
INFO:root:Epoch[1] Batch [740]	Speed: 894.34 samples/sec	acc=0.576667
INFO:root:Epoch[1] Batch [760]	Speed: 893.40 samples/sec	acc=0.579667
INFO:root:Epoch[1] Batch [780]	Speed: 900.40 samples/sec	acc=0.578667
INFO:root:Epoch[1] Batch [800]	Speed: 894.45 samples/sec	acc=0.576167
INFO:root:Epoch[1] Batch [820]	Speed: 898.20 samples/sec	acc=0.577167
INFO:root:Epoch[1] Batch [840]	Speed: 896.50 samples/sec	acc=0.581167
INFO:root:Epoch[1] Batch [860]	Speed: 890.66 samples/sec	acc=0.575667
INFO:root:Epoch[1] Batch [880]	Speed: 895.46 samples/sec	acc=0.582667
INFO:root:Epoch[1] Batch [900]	Speed: 898.26 samples/sec	acc=0.570167
INFO:root:Epoch[1] Batch [920]	Speed: 895.70 samples/sec	acc=0.581333
INFO:root:Epoch[1] Batch [940]	Speed: 889.96 samples/sec	acc=0.574667
INFO:root:Epoch[1] Batch [960]	Speed: 890.94 samples/sec	acc=0.584167
INFO:root:Epoch[1] Batch [980]	Speed: 893.38 samples/sec	acc=0.587000
INFO:root:Epoch[1] Batch [1000]	Speed: 895.33 samples/sec	acc=0.567833
INFO:root:Epoch[1] Batch [1020]	Speed: 891.00 samples/sec	acc=0.582167
INFO:root:Epoch[1] Batch [1040]	Speed: 889.19 samples/sec	acc=0.573000
INFO:root:Epoch[1] Batch [1060]	Speed: 895.26 samples/sec	acc=0.572500
INFO:root:Epoch[1] Batch [1080]	Speed: 894.86 samples/sec	acc=0.577500
INFO:root:Epoch[1] Batch [1100]	Speed: 842.79 samples/sec	acc=0.575000
INFO:root:Epoch[1] Batch [1120]	Speed: 894.97 samples/sec	acc=0.585333
INFO:root:Epoch[1] Batch [1140]	Speed: 896.38 samples/sec	acc=0.577333
INFO:root:Epoch[1] Batch [1160]	Speed: 890.99 samples/sec	acc=0.579167
INFO:root:Epoch[1] Batch [1180]	Speed: 899.30 samples/sec	acc=0.574333
INFO:root:Epoch[1] Batch [1200]	Speed: 890.80 samples/sec	acc=0.583167
INFO:root:Epoch[1] Batch [1220]	Speed: 895.06 samples/sec	acc=0.581500
INFO:root:Epoch[1] Batch [1240]	Speed: 885.19 samples/sec	acc=0.577833
INFO:root:Epoch[1] Batch [1260]	Speed: 884.31 samples/sec	acc=0.579000
INFO:root:Epoch[1] Batch [1280]	Speed: 892.06 samples/sec	acc=0.572333
INFO:root:Epoch[1] Batch [1300]	Speed: 893.74 samples/sec	acc=0.579000
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
INFO:root:Epoch[1] Batch [1320]	Speed: 95.45 samples/sec	acc=0.584167
INFO:root:Epoch[1] Batch [1340]	Speed: 901.04 samples/sec	acc=0.578167
INFO:root:Epoch[1] Batch [1360]	Speed: 896.28 samples/sec	acc=0.584833
INFO:root:Epoch[1] Batch [1380]	Speed: 906.86 samples/sec	acc=0.570833
INFO:root:Epoch[1] Batch [1400]	Speed: 901.14 samples/sec	acc=0.566333
INFO:root:Epoch[1] Batch [1420]	Speed: 898.40 samples/sec	acc=0.579167
INFO:root:Epoch[1] Batch [1440]	Speed: 893.21 samples/sec	acc=0.581167
INFO:root:Epoch[1] Batch [1460]	Speed: 897.20 samples/sec	acc=0.583833
INFO:root:Epoch[1] Batch [1480]	Speed: 900.60 samples/sec	acc=0.574333
INFO:root:Epoch[1] Batch [1500]	Speed: 900.23 samples/sec	acc=0.569167
INFO:root:Epoch[1] Batch [1520]	Speed: 894.52 samples/sec	acc=0.586333
INFO:root:Epoch[1] Batch [1540]	Speed: 895.27 samples/sec	acc=0.571333
INFO:root:Epoch[1] Batch [1560]	Speed: 888.79 samples/sec	acc=0.580000
INFO:root:Epoch[1] Batch [1580]	Speed: 899.64 samples/sec	acc=0.567333
INFO:root:Epoch[1] Batch [1600]	Speed: 896.30 samples/sec	acc=0.575
