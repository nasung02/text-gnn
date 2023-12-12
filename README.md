# Text-GCN 

This repository contains a PyTorch implementation of 
> Graph Convolutional Networks for Text Classification. 
> Liang Yao, Chengsheng Mao, Yuan Luo.
> AAAI, 2019. [\[Paper\]](https://arxiv.org/abs/1809.05679)

## Datasets

For a new dataset, prepare a `[dataset_name]_labels.txt` and `[dataset_name]_sentences.txt` in `/data/corpus` in which each line corresponds to a document and its corresponding label. 
Use `prep_data.py` to further clean `[dataset_name]_sentences.txt`.
The script will generate a  `[dataset_name]_sentences_clean.txt`
To create the vocab for the graph, use 'build_graph.py'.

For the datasets used in my final paper, download from: https://drive.google.com/drive/folders/1uR57Qesnu1L9n3NFpPDN54qWQhx5ygt1?usp=share_link
 
## Running the model
First, install the requirements listed in the requirements.txt file.
To run the model simply change the model and dataset configurations in `config.py`.  
The 3 experiments listed in my final report change 'dataset = _____' in the config.py file to "dataset = '3labmovs'" (experiment 1), "dataset = 'other3labmovs'" (experiment2), and "dataset = 'similar3labmovs'" (experiment3). 
After model configuration, simply run 
```
$ python main.py
```
Alternatively, run
```
$ bash execute.sh
```
To run bash script that will install dependencies and run the model