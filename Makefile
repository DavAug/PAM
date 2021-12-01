# Makefile for paper (figures and data)
.PHONY: all clean
all: in_vitro_study

# In vitro study
in_vitro_study: format_data infer_K_model plot_results

format_data: data/raw_data/format_data.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<
infer_K_model: results/in_vitro_study/infer_K_model.ipynb
	jupyter nbconvert --to notebook --inplace --ExecutePreprocessor.timeout=1000 --execute $<
plot_results: results/in_vitro_study/plot_results.ipynb
	jupyter nbconvert --to notebook --inplace --execute $<

# Delete figures and derived data
clean: clean_figures
clean_figures:
	rm -f $(PWD)/results/in_vitro_study/test.pdf