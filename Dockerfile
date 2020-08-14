FROM testcafe/testcafe
WORKDIR /tmp
USER root
RUN apk --no-cache $ALPINE_REPOS add maven python3
USER user
ENTRYPOINT []
