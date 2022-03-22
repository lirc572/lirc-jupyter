FROM python:3.7-slim-buster

USER root

WORKDIR /workdir

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN apt-get update -yq \
    && apt-get -yq install curl gnupg ca-certificates \
    && curl -L https://deb.nodesource.com/setup_12.x | bash \
    && apt-get update -yq \
    && apt-get install -yq \
        dh-autoreconf=19 \
        ruby=1:2.5.* \
        ruby-dev=1:2.5.* \
        nodejs octave

RUN npm -g config set user root \
    && npm install -g --silent ijavascript \
    && ijsinstall

RUN rm requirements.txt

CMD jupyter lab --allow-root --ip=0.0.0.0 --no-browser --LabApp.trust_xheaders=True --LabApp.disable_check_xsrf=False --LabApp.allow_remote_access=True --LabApp.allow_origin='*'
