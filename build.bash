# Define your tensorflow git repo location here (not the build). e.g. if it is ~/Documents/tensorflow, use:
TENSORFLOW_LOCATION='~/Documents/tensorflow/'

cd $TENSORFLOW_LOCATION/tensorflow/contrib/lite/java/demo/app/src/main
bazel build -c opt --cxxopt='--std=c++11'   //tensorflow/contrib/lite/java/demo/app/src/main:isthisloss 
adb install $TENSORFLOW_LOCATION/bazel-bin/tensorflow/contrib/lite/java/demo/app/src/main/isthisloss.apk
