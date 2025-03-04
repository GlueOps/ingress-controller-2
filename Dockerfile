# Use distroless as minimal base image to package the manager binary
# Refer to https://github.com/GoogleContainerTools/distroless for more details
FROM gcr.io/distroless/base-debian12:debug-nonroot@sha256:ee694eefd7685d8c443fec6abd3bff8e30c437faa8fbeacc0ce4c2e847d45501
COPY bin/manager /manager
USER 65532:65532

ENTRYPOINT ["/manager"]
