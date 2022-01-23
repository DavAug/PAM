# Makefile for paper (figures and data)
.PHONY: all clean
all: in_vitro_study in_silico_study

# Run analysis of in vitro study
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

# Run analysis of in silico study
in_silico_study: synthesise_data infer_K_model_after_10h infer_K_model_after_15h infer_K_model_after_20h infer_K_model_after_30h infer_KP_model_after_10h infer_KP_model_after_15h infer_KP_model_after_20h infer_KP_model_after_30h infer_KR_model_after_10h infer_KR_model_after_15h infer_KR_model_after_20h infer_KR_model_after_30h predict_doses

synthesise_data: results/in_silico_study/synthesise_data.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<
infer_K_model_after_10h: results/in_silico_study/infer_K_model_after_10h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_K_model_after_15h: results/in_silico_study/infer_K_model_after_15h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_K_model_after_20h: results/in_silico_study/infer_K_model_after_20h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_K_model_after_30h: results/in_silico_study/infer_K_model_after_30h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KP_model_after_10h: results/in_silico_study/infer_KP_model_after_10h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KP_model_after_15h: results/in_silico_study/infer_KP_model_after_15h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KP_model_after_20h: results/in_silico_study/infer_KP_model_after_20h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KP_model_after_30h: results/in_silico_study/infer_KP_model_after_30h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KR_model_after_10h: results/in_silico_study/infer_KR_model_after_10h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KR_model_after_15h: results/in_silico_study/infer_KR_model_after_15h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KR_model_after_20h: results/in_silico_study/infer_KR_model_after_20h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
infer_KR_model_after_30h: results/in_silico_study/infer_KR_model_after_30h.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<
predict_doses: results/in_silico_study/predict_doses.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=10000 --execute $<

# Delete figures and derived data
clean: clean_in_vitro_data clean_in_silico_data clean_figures
clean_in_vitro_data:
	rm -f $(PWD)/results/in_vitro_study/derived_data/K_model_inference_data.nc
	rm -f $(PWD)/results/in_vitro_study/derived_data/KP_model_inference_data.nc
	rm -f $(PWD)/results/in_vitro_study/derived_data/KR_model_inference_data.nc
clean_in_silico_data:
	rm -f $(PWD)/results/in_silico_study/derived_data/measurements.csv
	rm -f $(PWD)/results/in_silico_study/derived_data/K_model_posterior_10h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/K_model_posterior_15h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/K_model_posterior_20h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/K_model_posterior_30h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KP_model_posterior_10h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KP_model_posterior_15h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KP_model_posterior_20h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KP_model_posterior_30h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KR_model_posterior_10h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KR_model_posterior_15h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KR_model_posterior_20h.nc
	rm -f $(PWD)/results/in_silico_study/derived_data/KR_model_posterior_30h.nc
clean_figures:
	rm -f $(PWD)/results/in_vitro_study/in_vitro_data.pdf
	rm -f $(PWD)/results/in_vitro_study/model_weights_in_vitro_study.pdf
	rm -f $(PWD)/results/in_vitro_study/MLE_predictions.pdf
	rm -f $(PWD)/results/in_silico_study/log_reduction_doses.pdf