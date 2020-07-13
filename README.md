# roadAR-test4
Test task for the RoadAR company.

## How to Run
Code uses opencv for video management and pytorch for model inference.

Before running add the `input.avi` to the `data` folder and download the model weights using the `config/download_weights.sh` script.

All the code can be found in the `Task 4.ipynb` file.

### Docker
You can also build a Docker image.

```bash
> docker build . --tag test4

> docker run -p 8000:8888 --name test4 test4
```
Then open the `[localhost:8000](localhost:8000)` and paste the token from the cmd.

## Results

The annotation of the cars can be found in `data/input_annotations.json` file.

AP(0.5) score of the model equals **46.10**%.

Video with the results can be found [here](https://youtu.be/gNeA92TwzOk).
