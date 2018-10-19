#!/bin/bash  
START=$(date +%s)
ArrayName=(keras-yolo3/examples/dipstick/images512-1024p/valid_images/*)
for var in "${ArrayName[@]}"
do
echo "RUN PREDICT WITH $var" 
time python keras-yolo2/predict.py -c keras-yolo2/config_dipstick_colab_1.json -w full_yolo__v2_dipstick_colab_1.h5 -i "$var"
done
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds"