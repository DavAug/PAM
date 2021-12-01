# Makefile for paper (figures and data)
.PHONY: all clean
all: in_vitro_study in_silico_study

# In vitro study
in_vitro_study: format_data infer_K_model infer_KP_model infer_KR_model plot_results

format_data: data/raw_data/format_data.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<
infer_K_model: results/in_vitro_study/infer_K_model.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=1000 --execute $<
infer_KP_model: results/in_vitro_study/infer_KP_model.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=1000 --execute $<
infer_KR_model: results/in_vitro_study/infer_KR_model.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=1000 --execute $<
plot_results: results/in_vitro_study/plot_results.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

# In silico study
in_silico_study: synthesise_data infer_K_model_after_30h

synthesise_data: results/in_silico_study/synthesise_data.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<
infer_K_model_after_30h: results/in_silico_study/infer_K_model_after_30h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<

# Delete figures and derived data
clean: clean_figures
clean_figures:
	rm -f $(PWD)/results/in_vitro_study/in_vitro_data.pdf
	rm -f $(PWD)/results/in_vitro_study/model_weights_in_vitro_study.pdf
	rm -f $(PWD)/results/in_vitro_study/MLE_predictions.pdf