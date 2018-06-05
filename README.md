# mobilefacenet-V2
improve the accuracy of mobilefacenet 
in paper mobilefacenet论文(https://arxiv.org/abs/1804.07573) 中精度达到LFW 99.5% agedb 95.9% now i modifed to train。we get more higher accuray:[lfw][12000]Accuracy-Flip: 0.99617+-0.00358  [agedb_30][12000]Accuracy-Flip: 0.96017+-0.00893

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

first step: train softmax(facenet):
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
