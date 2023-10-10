# Install ucimlrepo package

# Note: For this to work run pip install ucimlrepo on your terminal
import ucimlrepo

# Import necessary functions from ucimlrepo package
from ucimlrepo import fetch_ucirepo


def fetch_dataset():
    # Fetch dataset with ID 17 (Breast Cancer Wisconsin Diagnostic)
    breast_cancer_wisconsin_diagnostic = fetch_ucirepo(id=17)

    # Extract features and targets from the fetched dataset
    X = breast_cancer_wisconsin_diagnostic.data.features
    y = breast_cancer_wisconsin_diagnostic.data.targets

    # Print metadata of the dataset
    print(breast_cancer_wisconsin_diagnostic.metadata)

    # Print variable information of the dataset
    print(breast_cancer_wisconsin_diagnostic.variables)

    return breast_cancer_wisconsin_diagnostic

fetch_dataset()