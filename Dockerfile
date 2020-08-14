FROM testcafe/testcafe
WORKDIR /tmp
USER root
RUN apk --no-cache $ALPINE_REPOS add maven
RUN apk --no-cache $ALPINE_REPOS add \
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
      freetype-dev
USER user
ENTRYPOINT []
