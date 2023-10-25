# Recognition of handwritten flowcharts with CNNs
Recognition of handwritten flowcharts using convolutional neural networks to regonize the digital flowchart.

## Overview
The pipeline implemented in order to solve the problem of the recognition of handwritten and computer generator flowcharts uses image preprocessing, the input image is sending to the shape-connector detector. moreover, on the flow for shapes and connectors it uses unsharp masking and a model that is called [Faster R-CNN](https://arxiv.org/abs/1506.01497) with backbone VGG-16. 

## How to set up for testing detections
1. Create a virtual environment with Conda with name 'tt' and install all libraries required to perform this project, which is separately available in  **requriment.sh**
2. Download / clone this repo.
3. Shapes-connectors model:
    - Pre-trained model is already available in the directory.
      
## Usage
1. Please, activate your Conda enviroment. 
2. Move to inside repository folder, example: `$ cd handwritten-flowchart-with-cnn`
3. Type: ```$ python3 handler.py ```
4. Use the "Recognize flowchart" option to test detections with handwritten or computer generated flowcharts.

### Some examples of the results

## 1. Handwritten flowchart recognition:
   

![image](https://github.com/narayan123411/Flowchart-Recognition/assets/53684708/707d61ec-e350-445e-9a5a-269d324b3f93)

  
## 2. Computer-generated flowchart recognition:
   

![image](https://github.com/narayan123411/Flowchart-Recognition/assets/53684708/d7f18732-20bf-429b-b451-44bba07dd631)




## Extra
Would you like to [download](https://www.kaggle.com/davbetm/flowchart-3b) the dataset? 

## citataion:

- Author: ISC UPIIZ students
- Title: Flowchart 3b
- Version: 3.0
- Date: May 2020.
- Editors: Onder F. Campos and David Betancourt.
- Publisher Location: Zacatecas, Mexico.
- Electronic Retrieval Location: https://www.kaggle.com/davbetm/flowchart-3b
