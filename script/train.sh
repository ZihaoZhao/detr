#! /bin/bash
###
 # @Author       : Zihao Zhao
 # @E-mail       : zhzhao18@fudan.edu.cn
 # @Company      : IBICAS, Fudan University
 # @Date         : 2021-11-23 10:10:39
 # @LastEditors  : Zihao Zhao
 # @LastEditTime : 2021-11-23 10:26:18
 # @FilePath     : /detr/script/train.sh
 # @Description  : 
### 

echo "$OSTYPE"
code_dir='/zhzhao/code/detr/'
python_dir='/zhzhao/miniconda3/envs/detr/bin/'
coco_dir='/zhzhao/dataset/coco2017/'
log_dir='/zhzhao/logs/'

python="${python_dir}python"
main="${code_dir}main.py"

${python} -m torch.distributed.launch --nproc_per_node=4 --use_env ${main} --coco_path ${coco_dir} \
                        > "${log_dir}$(date +%Y%m%d_%H%M%S)"