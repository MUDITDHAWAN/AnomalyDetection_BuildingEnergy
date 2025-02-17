�	�E�2I�?�E�2I�?!�E�2I�?	�j���*@�j���*@!�j���*@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�E�2I�?�~�:p��?A���`��?Yˀ��,'�?*	��Q��`@2O
Iterator::Model::BatchV2G�(5�?!I�*C�W@)s�m�B<�?1��"�J@:Preprocessing2\
%Iterator::Model::BatchV2::TensorSlice 5B?S�[�?!L���c�D@)5B?S�[�?1L���c�D@:Preprocessing2F
Iterator::Model�67�',�?!      Y@)���O�~?1n�Q�{@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is MODERATELY input-bound because 13.0% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*high2t20.7 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9�j���*@>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�~�:p��?�~�:p��?!�~�:p��?      ��!       "      ��!       *      ��!       2	���`��?���`��?!���`��?:      ��!       B      ��!       J	ˀ��,'�?ˀ��,'�?!ˀ��,'�?R      ��!       Z	ˀ��,'�?ˀ��,'�?!ˀ��,'�?JCPU_ONLYY�j���*@b Y      Y@qR�[��R@"�	
both�Your program is MODERATELY input-bound because 13.0% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
nohigh"t20.7 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.:
Refer to the TF2 Profiler FAQb�75.7786% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"CPU: B 