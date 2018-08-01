**prototxt**

注意voc\*-dw.prototxt是我修改后的，原始文件很多地方lr_mult为0.1和0.2，那是为了fine-tuning，我都改成了正常值。

**收敛情况**

我用的脚本从头训练4类检测（num_classes=5），大概1000次迭代loss会降低到3以内，2000次迭代会降低到2左右，这时候应该已经能检测点东西出来了。

VOC0712的数据下降很慢，6万次迭代时loss=3.*，mAP约0.6

**训练时间**

我用的一块GTX1080Ti，大概110s/100iters。

**merge_bn.py**

控制台运行 python merge_bn.py 

**导出ZQCNN模型**

https://github.com/zuoqing1988/ZQCNN-v0.0 是一款比mini-caffe更快的前向库（目前仅支持windows系统）

用matlab运行 export_mobilenet_SSD_caffemodel_to_nchw_binary.m

生成的MobileNetSSD_deploy.nchwbin对应.caffemodel

MobileNetSSD_deploy.zqparams对应.prototxt文件

**训练自己的数据**

先打出VOC数据的标签，这个网上有很多教程，查YOLO训练自己的数据就能搜到。

做好的数据也要按VOCDevkit\VOC*这样的路径存放

改create_annoset.py 里面的数据集，也就是2007，2012改成你自己的数据

改labelmap_voc.prototxt里面的类名

改.prototxt里面，21改成#， 63改成#*3 ，126 改成#*6 (#为你的类别数)

如果要导出ZQCNN模型时，将.zqparams中21 改成#， 63改成#*3 ，126 改成#*6 (#为你的类别数)


