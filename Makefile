.PHONY: clean data lint requirements sync_data_to_s3 sync_data_from_s3

#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROFILE = default
PROJECT_NAME = AAI500_Group4_BreastCancerDataSet_Akioyamen_Guzman_Durrani
PYTHON_INTERPRETER = python3

ifeq (,$(shell which conda))
HAS_CONDA=False
else
HAS_CONDA=True
endif

#################################################################################
# COMMANDS                                                                      #
#################################################################################

## Install Python Dependencies
## Install Python Dependencies
requirements:
	$(PYTHON_INTERPRETER) -m pip install -U pip setuptools wheel
	$(PYTHON_INTERPRETER) -m pip install -r requirements.txt
	$(PYTHON_INTERPRETER) -m pip install pandas numpy scikit-learn matplotlib ucimlrepo

## Make Dataset
data: data
	$(PYTHON_INTERPRETER) dataset_analysis.py

## Run Primitive Model Analyzers
primitive: primitive
	$(PYTHON_INTERPRETER) 

## Run Logistic Regression Model 
logistic: logistic
	$(PYTHON_INTERPRETER) build_features.py