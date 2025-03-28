# MT Exercise 2: Pytorch RNN Language Models

I made the following changes to `download_data.sh` and `train.sh`:

- To download the reuters data, I added a python script `load_reuters_corpus.py` that loads the reuters raw text from nltk.corpus
- In `download_data.sh` I call this script and write the raw text to `data/reuters/raw` before preprocessing and splitting into test/train/validation.
- In `train.sh` I adjusted the log interval to fit the size of the dataset.

# Replicating My Results
To run training on my custom dataset follow these steps:
- run `.scripts/download_data.sh`, this will download the data required data and do the train/test/validation split
- run `.scripts/train.sh` for each dropout in [0, 0.2, 0.4, 0.6, 0.8]

To produce the charts from the PDF, follow these steps after having run the training loop for each dropout
- run `pip3 install matplotlib` and `pip3 install pandas`
- run `python scripts/chart_logs.py`