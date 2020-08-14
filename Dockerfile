FROM testcafe/testcafe
WORKDIR /tmp
USER root
RUN apk --no-cache $ALPINE_REPOS add maven
USER user
ENTRYPOINT []
