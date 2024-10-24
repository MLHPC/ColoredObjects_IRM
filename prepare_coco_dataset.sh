mkdir -p /gs/bs/tge-24IJ0078/dataset/SPCOCO
mkdir -p /gs/bs/tge-24IJ0078/dataset/coco
wget http://images.cocodataset.org/zips/train2017.zip -P /gs/bs/tge-24IJ0078/dataset/coco/
wget http://images.cocodataset.org/zips/val2017.zip -P /gs/bs/tge-24IJ0078/dataset/coco/
wget http://images.cocodataset.org/zips/test2017.zip -P /gs/bs/tge-24IJ0078/dataset/coco/
wget http://images.cocodataset.org/annotations/annotations_trainval2017.zip -P /gs/bs/tge-24IJ0078/dataset/coco/
unzip /gs/bs/tge-24IJ0078/dataset/coco/train2017.zip -d /gs/bs/tge-24IJ0078/dataset/coco
unzip /gs/bs/tge-24IJ0078/dataset/coco/val2017.zip -d /gs/bs/tge-24IJ0078/dataset/coco
unzip /gs/bs/tge-24IJ0078/dataset/coco/test2017.zip -d /gs/bs/tge-24IJ0078/dataset/coco
unzip /gs/bs/tge-24IJ0078/dataset/coco/annotations_trainval2017.zip -d /gs/bs/tge-24IJ0078/dataset/coco
python -W ignore dataset_scripts/coco_colours_ly2c.py --cons_ratio 0.999_0.7_0.1 --noise_ratio 0.05 --image_scale 32
