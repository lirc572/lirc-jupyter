# # lirc-jupyter

[![GitHub last commit](https://img.shields.io/github/last-commit/lirc572/lirc-jupyter?style=for-the-badge)](https://github.com/lirc572/lirc-jupyter)
[![CI Status](https://img.shields.io/github/workflow/status/lirc572/lirc-jupyter/ci?style=for-the-badge)](https://github.com/lirc572/lirc-jupyter/actions/workflows/ci.yml)

## Environment

Create a conda environment:

```bash
conda env create -f environment.yml
```

Save the environment:

```bash
pip freeze > requirements.txt
```

## Docker Build

```bash
docker build -t lirc572/lirc-jupyter:latest .
docker push lirc572/lirc-jupyter:latest
```

## Notes

How the packages are installed:

```bash
conda create --name lirc-env python=3.7
conda activate lirc-env

pip install numpy scipy scipy matplotlib seaborn scikit-learn scikit-learn torch transformers captum jupyterlab octave-kernel

pip freeze > requirements.txt
```
