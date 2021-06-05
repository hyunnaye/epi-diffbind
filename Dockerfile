ARG R_VERSION=4.0.0

FROM r-base:${R_VERSION} AS r

RUN apt-get update -qq && \
    apt-get install -qq --no-install-recommends \
      libxml2-dev \
      libcurl4-openssl-dev \
      librsvg2-dev \

COPY scripts/install.R .

RUN ./install.R

ENTRYPOINT []
