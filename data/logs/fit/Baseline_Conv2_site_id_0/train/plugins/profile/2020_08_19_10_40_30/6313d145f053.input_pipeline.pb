	,�F<�@,�F<�@!,�F<�@	�mK��@�mK��@!�mK��@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$,�F<�@�3�l�?A�S�*%@Y8-x�W��?*	��C�b@2O
Iterator::Model::BatchV2�(���?!7�
;�W@)JӠh��?1x}��4�N@:Preprocessing2\
%Iterator::Model::BatchV2::TensorSlice 7�n�e��?!��"A�@@)7�n�e��?1��"A�@@:Preprocessing2F
Iterator::Model�[v��?!      Y@)���m��?1�WOOl@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is POTENTIALLY input-bound because 8.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).no*no9�mK��@>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�3�l�?�3�l�?!�3�l�?      ��!       "      ��!       *      ��!       2	�S�*%@�S�*%@!�S�*%@:      ��!       B      ��!       J	8-x�W��?8-x�W��?!8-x�W��?R      ��!       Z	8-x�W��?8-x�W��?!8-x�W��?JCPU_ONLYY�mK��@b 