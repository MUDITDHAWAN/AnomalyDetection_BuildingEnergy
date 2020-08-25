# AnomalyDetection_BuildingEnergy

In each .pynb file you can set the 'dir_saved_data' ,and 'dir_saved_model' variables to point to the directory to save the pre-processed dat and trained-model weights respectively 

There are two Data Pre-Processing files which create and save the data for the specified site_id -  
```
    DataPreProcessing_Baseline.ipynb - For the Baseline models

    Data_PreProcessing_BiLSTM.ipynb -  For the Attenion Bi-LSTM model
```

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

    ```
    1) Attention Bi-LSTM model:
        Bi_LSTM.ipynb

    2) Baseline De-Noising Autencoders :
        Basic_AE_Baseline_Model.ipynb
        Basic_AE_Conditional_Baseline_Model.ipynb

    3) Baseline Convolutional De-Noising Autencoders :
        Conv_Baseline_Model.ipynb
        Conv_Conditional_Baseline_Model.ipynb
    ```


The following files calculate the result for the specified site_id in the file 

    ```
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
    ```

For running the Bi-LSTM model completely, you need to run 3 files:
    ```
    1) DataPreProcessing_Baseline.ipynb : Which contains the following parameters which can be changed as paer the experiment setting:
        
        ## For specifying the directories 
        dir_dataset = "/content/drive/My Drive/Anomaly detection - BuildSys2020/"
        dir_labels =  "/content/drive/My Drive/ASHRAEData/"
        dir_save_data = "/content/drive/My Drive/ASHRAEData/data"
        
        ## change these lists as per model's input 
        site_id= 0 

        ## features to be used in the model ('anomaly' included in the list for the labels)
        features_used = ['building_id','timestamp', 'air_temperature', 'cloud_coverage', 'dew_temperature', 'precip_depth_1_hr', 
                          'sea_level_pressure', 'wind_speed','primary_use', 'square_feet', 'year_built', 'floor_count', 
                          'hour', 'weekday', 'month', 'anomaly','meter_reading_log']

        ## columns to be normalized using Z algorithm
        z_columns = ['air_temperature', 'cloud_coverage', 'dew_temperature', 'precip_depth_1_hr', 'sea_level_pressure', 'wind_speed', 
                      'square_feet', 'year_built' ]          

        ## columns for which min-max normalization
        minmax_columns = ['hour', 'month', 'weekday']

        ## window length 
        seq_length = 24 

        ## number of buildings to be considered if not using site id
        nb_buildings = 145

        ## output feature to be predicted 
        output_feature = 'meter_reading_log'

        ## name of the model for which data is prepared
        model_name = "bi_lstm_model"

        ## for splitting the non-Anomalous data 
        train_percent = 0.8
        val_percent = 0.1
        test_percent = 0.1

        ## for splitting the Anomalous data 
        train_percent_anom = 0.1
        val_percent_anom = 0.2
        test_percent_anom = 0.7
    
    2) Bi_LSTM.ipynb - Which contains the following parameters which can be changed as paer the experiment setting:
        
        ## For specifying the directories 
        dir_saved_data = "/content/drive/My Drive/ASHRAEData/data"
        dir_save_model = "/content/drive/My Drive/ASHRAEData/data"
        
        ## change these lists as per model's input 
        site_id= 0 

        ## window length 
        seq_length = 24 

        ## name of the model for which data is prepared
        model_name = "bi_lstm_model"

    3) Inference_Bi_LSTM.ipynb - Which contains the following parameters which can be changed as paer the experiment setting:
        
        ## For specifying the directories 
        dir_saved_data = "/content/drive/My Drive/ASHRAEData/data"
        dir_save_model = "/content/drive/My Drive/ASHRAEData/data"
        
        ## change these lists as per model's input 
        site_id= 0 

        ## window length 
        seq_length = 24 

        ## name of the model for which data is prepared
        model_name = "bi_lstm_model"
        
        threshold = <as per validation data>

        '''
        
        
At the start of each notebook a cell contains all the tunable factors which can be changed to suit the experiment setting
