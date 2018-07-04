# Is this loss? A Loss.jpg Detector

This is the central repository for v0.9.0 of "Is this Loss?", which can be found on the Google Play Store here: https://play.google.com/store/apps/details?id=party.eigenloss.android.isthisloss. If you would like to build the app yourself, you are welcome to do so however you like. It may be more convenient to follow our instructions below, although they may be completely broken. It's probably more fun to just look at the source.

# Installation/build files (not tested)

Dependencies:
- Bazel
- Python (3), pip
- Tensorflow (>1.8), specifically installed via compilation from source.
- Tensorflow Hub for retraining the Mobilenet. Warning: this may ruin your Tensorboard installation if you have one.
- Everything else mentioned here: https://github.com/tensorflow/tensorflow/tree/master/tensorflow/contrib/lite/java/demo

Copy the "main" directory from this repository into or alongside the //tensorflow/contrib/lite/java/demo/app/src/main folder in your installation of tensorflow. Then run build.bash. The .tflite in the repository should be from the latest app, and should work.

If you're daring enough to want to retrain the neural network, you can check out retrain.bash, which is dependent on the retrain.py found in the TensorFlow Hub repository: https://github.com/tensorflow/hub/tree/master/examples/image_retraining. 

# License
All of the files in this repository are released subject to the license used for the original Tensorflow repository: Apache 2.0. 

# Notes
Please don't send me angry emails. If you think this work was worthwhile, or deserves further development or rewriting, you are welcome to send
	- E-mail: lossless.solutions@gmail.com
	- Ether: 0x12531e612937c803dc146529684a39d20121bec0
