root_dir=../..

redo=1
data_root_dir=VOCdevkit
dataset_name=VOC0712
mapfile=labelmap_voc.prototxt
anno_type="detection"
db="leveldb"
min_dim=0
max_dim=0
width=300
height=300

extra_cmd="--encode-type=jpg --encoded"
if [ $redo ]
then
  extra_cmd="$extra_cmd --redo"
fi
for subset in test trainval
do
  python create_annoset.py --anno-type=$anno_type --backend=$db --label-map-file=$mapfile --min-dim=$min_dim --max-dim=$max_dim --resize-width=$width --resize-height=$height --check-label $extra_cmd $data_root_dir $subset.txt $dataset_name"_"$subset"_"$db
done
