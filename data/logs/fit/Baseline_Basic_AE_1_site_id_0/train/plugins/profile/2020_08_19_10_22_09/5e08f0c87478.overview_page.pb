�	bod��?bod��?!bod��?	��`a�_*@��`a�_*@!��`a�_*@"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$bod��?�F�@�?A��K�u�?Y�-�R��?*	y�&1�X@2O
Iterator::Model::BatchV2D5%Y���?!���� W@)Y���j�?1�����H@:Preprocessing2\
%Iterator::Model::BatchV2::TensorSlice .�5#�ܥ?!�e�U�cE@).�5#�ܥ?1�e�U�cE@:Preprocessing2F
Iterator::Model�4�BX��?!      Y@)���~?1�����@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
both�Your program is MODERATELY input-bound because 13.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.no*high2t20.6 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9��`a�_*@>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�F�@�?�F�@�?!�F�@�?      ��!       "      ��!       *      ��!       2	��K�u�?��K�u�?!��K�u�?:      ��!       B      ��!       J	�-�R��?�-�R��?!�-�R��?R      ��!       Z	�-�R��?�-�R��?!�-�R��?JCPU_ONLYY��`a�_*@b Y      Y@qhdXdA@"�	
both�Your program is MODERATELY input-bound because 13.2% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
nohigh"t20.6 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.:
Refer to the TF2 Profiler FAQb�34.7839% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"CPU: B 