FROM python:3-alpine as buildstage

RUN mkdir /install && \
  pip install \
    --install-option="--prefix=/install" \
    requests

FROM python:3-alpine

COPY --from=buildstage \
  /install \
  /usr/local

ADD tes3mp-stats.py /

RUN echo "00 * * * * cd /stats && python /tes3mp-stats.py" | crontab - && \
  mkdir /stats

VOLUME /stats

WORKDIR /stats

ENTRYPOINT [ "crond", "-f" ]
