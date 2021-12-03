# PAM

This GitHub repository serves as documentation and reproduction source for the results published in XXX. It contains the raw data, the data derived during the analysis, the model specifications in SBML format and executable scripts in form of Jupyter notebooks to reproduce the results.

## Looking at the results

The results are documented by multiple notebooks, which contain interactive figures. To open the notebooks please follow the links below:

### In vitro study

1. (Data pre-processing)[https://nbviewer.org/github/DavAug/PAM/blob/main/data/raw_data/format_data.ipynb]
2. (Inference of K model)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/infer_K_model.ipynb]
3. (Inference of KP model)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/infer_KP_model.ipynb]
4. (Inference of KR model)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/infer_KR_model.ipynb]
5. (Prediction of treatment response for clinical dosing regimen)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_vitro_study/plot_results.ipynb]

### In silico study

1. (Synthesis of measurements)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/synthesise_data.ipynb]
2. (Inference of K model after 10h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_10h.ipynb]
3. (Inference of K model after 15h experiment)https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_15h.ipynb
4. (Inference of K model after 20h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_20h.ipynb]
5. (Inference of K model after 30h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_K_model_after_30h.ipynb]
6. (Inference of KP model after 10h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_10h.ipynb]
7. (Inference of KP model after 15h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_15h.ipynb]
8. (Inference of KP model after 20h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_20h.ipynb]
9. (Inference of KP model after 30h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KP_model_after_30h.ipynb]
10. (Inference of KR model after 10h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_10h.ipynb]
11. (Inference of KR model after 15h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_15h.ipynb]
12. (Inference of KR model after 20h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_20h.ipynb]
13. (Inference of KR model after 30h experiment)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/infer_KR_model_after_30h.ipynb]
14. (Prediction of reduction doses)[https://nbviewer.org/github/DavAug/PAM/blob/main/results/in_silico_study/predict_doses.ipynb]

## Reproduce results

In order to make our results reproducible, we prepared a `Makefile`, which
calls Python scripts in the `results` directory. Before we can run those
Python scripts, we need to make sure that all dependencies are installed.

### 1. Install dependencies

- (optional) Create a virtual environment and activate it

```bash
python3 -m venv venv && source venv/bin/activate
```

- Install dependencies

```bash
pip install -r requirements.txt
```
