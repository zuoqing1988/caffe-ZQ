# 这是在windows系统下训练SSD的步骤

0.先编译caffe-ZQ，将build\install\bin文件夹里面的东西全部拷贝到当前bin文件夹

1.下载VOC数据，并解压到data\VOC0712\VOCDevkit文件夹里
存放路径为

data\VOC0712\VOCDevkit\VOC2007

data\VOC0712\VOCDevkit\VOC2012

2.启动cygwin64 Terminal（没装的话就先下载一个），切换到data\VOC0712目录

3. cygwin里输入 ./create_list.sh回车运行

4. cygwin里输入 ./create_data.sh回车运行

5.在目录data\VOC0712下双击train_voc.bat运行

注意：如果显存小的话，注意更改voc\MobileNetSSD_trian-dw.prototxt里的batch_size，还有voc\MobileNetSSD_test-dw.prototxt里的batch_size