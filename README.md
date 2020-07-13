# roadVR-test4
Test task for the RoadVR company.

## How to Run
Code uses opencv for video management and pytorch for model inference.

Before running add the `input.avi` to the `data` folder and download the model weights using the `config/download_weights.sh` script.

All the code can be found in the `Task 4.ipynb` file.

## Results

The annotation of the cars can be found in `data/input_annotations.json` file.

AP(0.5) score of the model equals **46.10**%.

Video with the results can be found [here](https://youtu.be/gNeA92TwzOk).
