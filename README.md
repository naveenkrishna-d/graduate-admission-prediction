# Graduate Admission Prediction using Machine Learning

## Table of Contents
- [Introduction](#introduction)
- [Problem Definition and Project Goals](#problem-definition-and-project-goals)
- [Related Work](#related-work)
- [Data Exploration and Pre-processing](#data-exploration-and-pre-processing)
- [Data Analysis and Experimental Results](#data-analysis-and-experimental-results)
- [Conclusion](#conclusion)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## Introduction
This repository contains the code and findings from a machine learning project aimed at predicting the chances of graduate admission to a university based on various factors such as GRE scores, GPA, research experience, and more. We have utilized seven different regression models to accurately predict graduate admission probabilities.

## Problem Definition and Project Goals
The project addresses the problem of predicting graduate admission chances and aims to:
1. Collect and preprocess data.
2. Perform feature engineering.
3. Build and evaluate various machine learning models.
4. Optimize the predictive model for better accuracy.

## Related Work
We have compared our results with related studies in the field and found that our models perform competitively, with the best-performing models achieving an RMSE of 0.062771.

## Data Exploration and Pre-processing
We explored the dataset, checked for missing values, and conducted statistical analyses. We standardized the data and visualized correlations between variables.

## Data Analysis and Experimental Results
Our study included seven different models, and the Lasso, Ridge, and Elastic Net regression models performed the best with the lowest RMSE values.

## Conclusion
In conclusion, our regression models, particularly Lasso, Ridge, and Elastic Net, effectively predict graduate admission chances. This project can be valuable for both prospective students and institutions.

## Getting Started
To get started with this project, follow the steps below:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/naveenkrishna-d/graduate-admission-prediction.git
   ```

2. Navigate to the project directory:

   ```bash
   cd graduate-admission-prediction
   ```

## Usage
You can use the provided code and models to predict graduate admission chances based on input data.

## Dependencies
- Python 3.x
- Libraries: NumPy, Pandas, Scikit-learn, TensorFlow/Keras (for neural network)

## Contributing
Contributions to this project are welcome. Please feel free to open an issue or submit a pull request.

## License
This project is licensed under the [MIT License](LICENSE).
