# old experiments
python train.py --data coco128.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --optimizer SGD --name SGD_0
python train.py --data coco128.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --optimizer Adam --name Adam_0
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --patience 1000 --optimizer AdamW --name AdamW_long
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --patience 1000 --optimizer Adam --name Adam_long
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --patience 1000 --optimizer SGD --name SGD_long
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --patience 1000 --optimizer SGD --name cmp_SGD
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --patience 1000 --optimizer RAD --name RAD_long

#  new experiments

# 1）max_iter= max_epochs, lr=1e-2
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp.yaml' --patience 1000 --optimizer SGD --name SGD_cmp_1
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp.yaml' --patience 1000 --optimizer RAD --name rad_cmp_1
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp.yaml' --patience 1000 --optimizer Adam --name Adam_cmp_1

# 2）max_iter= max_epochs, lr=1e-3
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp_2.yaml' --patience 1000 --optimizer SGD --name SGD_cmp_2
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp_2.yaml' --patience 1000 --optimizer RAD --name rad_cmp_2
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp_2.yaml' --patience 1000 --optimizer Adam --name Adam_cmp_2

# 3）max_iter= max_epochs, lr=1e-3, bound_lr=1e-2
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp_2.yaml' --patience 1000 --optimizer SGD --name SGD_cmp_2
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp_2.yaml' --patience 1000 --optimizer RAD --name rad_cmp_2
python train.py --data coco128.yaml --epochs 3000 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp './rad_configs/hyp.rad_cmp_2.yaml' --patience 1000 --optimizer Adam --name Adam_cmp_2


# Coco full exp

python train.py --data coco.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp 'rad_configs/experiments/hyp.AdamW.yaml' --patience 1000 --optimizer AdamW --name AdamWRad_lre3

# rad update 0.1.3

python train.py --data coco.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp 'exp_configs/experiments/hyp.Adam.yaml' --patience 300 --optimizer Adam --name Adam_lre3

python train.py --data coco.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp 'exp_configs/experiments/hyp.Rad.yaml' --patience 300 --optimizer RAD --name Rad_lre3

python train.py --data coco.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp 'exp_configs/experiments/hyp.Adamlr2.yaml' --patience 300 --optimizer Adam --name Adam_lre2


python train.py --data coco.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp 'exp_configs/experiments/hyp.Radlr2.yaml' --patience 300 --optimizer RAD --name Rad_lre2


python train.py --data coco.yaml --epochs 300 --weights '' --cfg yolov5n.yaml  --batch-size 128 --hyp 'exp_configs/experiments/hyp.Radlr53.yaml' --patience 300 --optimizer RAD --name Rad_lre53
# max_iter = epoch * round(dataloader_len / batch_size)
# 300*925/128
# only modify lr