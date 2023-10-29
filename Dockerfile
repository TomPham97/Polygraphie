FROM python:3.10.13-bookworm

USER root

RUN pip install -U pip && \
    pip install -U jupyterlab

USER $NB_UID

RUN pip install "tfx>=1.14.0" && \
    pip install -U google-cloud-aiplatform "shapely<2" && \
    pip install -U mne && \
    pip install -U matplotlib