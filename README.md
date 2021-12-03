# PAM

This GitHub repository serves as documentation and reproduction source for the results published in XXX. It contains the raw data, the data derived during the analysis, the model specifications in SBML format and executable scripts in form of Jupyter notebooks to reproduce the results.

## Looking at the results

The results are documented by multiple notebooks, which contain interactive figures. To open the notebooks please follow the links below:

### In vitro study

1. [Data pre-processing](https://nbviewer.org/github/DavAug/PAM/blob/main/data/raw_data/format_data.ipynb)
2. [Inference of K model](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/infer_K_model.ipynb)
3. [Inference of KP model](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/infer_KP_model.ipynb)
4. [Inference of KR model](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/infer_KR_model.ipynb)
5. [Prediction of treatment response for clinical dosing regimen](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/plot_results.ipynb)

### In silico study

1. [Synthesis of measurements](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/synthesise_data.ipynb)
2. [Inference of K model after 10h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_10h.ipynb)
3. [Inference of K model after 15h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_15h.ipynb)
4. [Inference of K model after 20h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_20h.ipynb)
5. [Inference of K model after 30h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_30h.ipynb)
6. [Inference of KP model after 10h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_10h.ipynb)
7. [Inference of KP model after 15h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_15h.ipynb)
8. [Inference of KP model after 20h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_20h.ipynb)
9. [Inference of KP model after 30h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_30h.ipynb)
10. [Inference of KR model after 10h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_10h.ipynb)
11. [Inference of KR model after 15h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_15h.ipynb)
12. [Inference of KR model after 20h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_20h.ipynb)
13. [Inference of KR model after 30h experiment](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_30h.ipynb)
14. [Prediction of reduction doses](https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/predict_dose.ipynb)

## Reproduce results

We prepaired two ways to reproduce our results.

### The easy way (no programming knowledge required)

You are welcome to rerun our scripts by clicking on the binder icon in the top right, once you opened the notebook links above. By clicking on the notebook links,
nbviewer opens the notebooks and provides a link to binder in the top right corner of the website (binder has an icon with three circles). By clicking on the binder
icon, a server is started for you and all dependencies for our scripts are installed automatically (this may take a couple seconds). Once this is done you can run our scripts in the browser to reproduce the results.

### The more flexible way (requires some knowledge of programming)

Alternatively, the GitHub repository can be cloned, and the scripts executed locally. For ease of execution, we prepared a `Makefile` that executes the scripts in the correct order. Please find a step-by-step instruction below, once you have cloned the repostory and moved with your bash console into the repository.

#### 1. Install dependencies

- (optional) Create a virtual environment and activate it

```bash
python3 -m venv venv && source venv/bin/activate
```

- Install dependencies

```bash
pip install -r requirements.txt
```

#### 2. Reproduce results

You can now reproduce the results by running

```bash
make all
```

This may take a while (30 mins or longer), because you a re-running all scripts sequentially. To reproduce only the *in vitro* study, or only the *in silico study*
you can run

```bash
make in_vitro_study
```
or

```bash
make in_silico_study
```

Alternatively, you are welcome to run each script individually, but be aware that some scripts are dependent on the data derived in other scripts.
