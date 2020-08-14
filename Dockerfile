FROM testcafe/testcafe
WORKDIR /tmp
USER root
RUN apk --no-cache $ALPINE_REPOS add maven
RUN apk add --no-cache --virtual build-deps \
      python3 \
      g++ \
      build-base \
      cairo-dev \
      jpeg-dev \
      pango-dev \
      musl-dev \
      giflib-dev \
      pixman-dev \
      pangomm-dev \
      libjpeg-turbo-dev \
      freetype-dev \
    && apk del build-deps \
    && apk add --no-cache \
      cairo \
      jpeg \
      pango \
      musl \
      giflib \
      pixman \
      pangomm \
      libjpeg-turbo \
      freetype
USER user
ENTRYPOINT []
