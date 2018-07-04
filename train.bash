IMAGE_SIZE=224
ARCHITECTURE="mobilenet_1.0_${IMAGE_SIZE}"
# was 0.25
# python3 /usr/local/lib/python3.5/dist-packages/tensorboard/main.py --logdir tf_files2/training_summaries &


python3 retrain.py \
  --num_gpus=1 \
  --bottleneck_dir=tf82/bottlenecks \
  --how_many_training_steps=500 \
  --tfhub_module="https://tfhub.dev/google/imagenet/mobilenet_v1_050_224/quantops/feature_vector/1" \
  --model_dir=tf82/models/ \
  --summaries_dir=tf82/training_summaries/"${ARCHITECTURE}" \
  --flip_left_right True \
  --random_scale=30 \
  --output_graph=tf82/retrained_graph.pb \
  --output_labels=tf82/retrained_labels.txt \
  --image_dir=trainingdata/thumbs/
