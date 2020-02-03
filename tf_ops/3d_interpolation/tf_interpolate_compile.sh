# TF1.2
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python3.6/dist-packages/tensorflow_core/include -I /usr/local/cuda/include -lcudart -L /usr/local/cuda/lib64/ -O2
# TF1.4
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0

CUDA_ROOT=/usr/local/cuda
TF_INC=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
TF_LIB=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')

echo $CUDA_ROOT
echo $TF_INC
echo $TF_LIB

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I $TF_INC -I /usr/local/cuda-8.0/include -I $TF_INC/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L$TF_LIB -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0



