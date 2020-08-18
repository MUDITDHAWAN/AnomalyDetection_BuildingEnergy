# AnomalyDetection_BuildingEnergy

In each .pynb file you can set the 'dir_saved_data' ,and 'dir_saved_model' variables to point to the directory to save the pre-processed dat and trained-model weights respectively 

There are two Data Pre-Processing files which create and save the data for the specified site_id -  
    DataPreProcessing_Baseline.ipynb - For the Baseline models

    Data_PreProcessing_BiLSTM.ipynb -  For the Attenion Bi-LSTM model

Output directory structure - 

```
dir_saved_data
    |
    |
    |-- {model_name}_data/  (For eg - bi_lstm_model_data)
    |       |
    |       |-- site_id_x/
    |               |
    |               |-- anom/
    |               |-- non_anom/
    |       
    |
    |
    |-- Baseline_data/
            |
            |-- Conditonal/
            |       |
            |       |--site_id_x/
            |               |
            |               |-- anom/
            |               |-- non_anom/
            |
            |-- Not_Conditonal/
                    |
                    |--site_id_x/
                            |
                            |-- anom/
                            |-- non_anom/
```                            

The following files train the models on the specified site_id in the file 
    1) Attention Bi-LSTM model:
        Bi_LSTM.ipynb

    2) Baseline De-Noising Autencoders :
        Basic_AE_Baseline_Model.ipynb
        Basic_AE_Conditional_Baseline_Model.ipynb

    3) Baseline Convolutional De-Noising Autencoders :
        Conv_Baseline_Model.ipynb
        Conv_Conditional_Baseline_Model.ipynb


The following files calculate the result for the specified site_id in the file 
    1) Attention Bi-LSTM model:
        Inference_Bi_LSTM.ipynb

    2) Baseline De-Noising Autencoders :
        Inference_Basic_AE_Baseline.ipynb
        Inference_Basic_AE_Conditional_Baseline.ipynb
    
    3) Baseline Convolutional De-Noising Autencoders :
        Inference_Conv_Baseline.ipynb
        Inference_Conv_Conditional_Baseline.ipynb
    
    4) Baseline Models using the PyOD library - 
        PyOD_inference.ipynb

At the start of each notebook a cell contains all the tunable factors which can be changed to suit the experiment setting
