FROM debian:sid-slim
RUN apt update -y && apt dist-upgrade -y
COPY --chmod=0755 buildscript.sh /build.sh
VOLUME ["/build"]
CMD "./build.sh"
