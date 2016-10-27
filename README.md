# Food reviews analysis

I built this project as a template for analyzing data sets and fitting scikit-learn models. In order to validate the workflow, I used data from [Amazon Fine Food Reviews](https://www.kaggle.com/snap/amazon-fine-food-reviews).

## Project structure

- `data/` Contains the input data pickled objects. Files are not commited.
- `notebooks/`
    - `Prepare data.ipynb` Clean data
    - `Overview.ipynb` Analyze data
    - `Review helpfulness modeling.ipynb` Train estimators to predict the helpfulness of food reviews.
    - `Review helpfulness application.ipynb` Notebook based on [Jupyter Dashboards](http://jupyter-dashboards-layout.readthedocs.io/en/latest/) that allows you to define a review and make predictions using the fitted estimators.
- `run/` Contains the docker configuration used to run this project.

## Setup

1. Download the following docker image archive: [github.com/mihaiparaschiv/data-science-images/releases/tag/v0.2.3](https://github.com/mihaiparaschiv/data-science-images/releases/tag/v0.2.3).

2. Build the `data-science-base` image. You can use `build-images.sh`.

3. In this project's folder:
    ```
    export FOOD_REVIEWS_VOLUME=$(pwd)
    cd run
    docker-compose -p reviews
    ```
4. Open the page at *http://`docker-host`:8888/*.
5. Download the data from [Kaggle](https://www.kaggle.com/snap/amazon-fine-food-reviews) and upload `Reviews.csv` into the `data` folder.
6. Go to *http://`docker-host`:8888/notebooks/Overview.ipynb*.
