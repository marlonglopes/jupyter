FROM jupyter/demo
MAINTAINER PPC Team

#ENV http_proxy http://web-proxy.corp.hp.com:8088
#ENV https_proxy http://web-proxy.corp.hp.com:8088

RUN /bin/bash -c "source activate python2 && pip install xgboost"

ADD window_n.dsv window_n.dsv
ADD model_logreg.ipynb model_logreg.ipynb
