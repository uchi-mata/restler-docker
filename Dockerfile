FROM mcr.microsoft.com/dotnet/sdk:3.1-focal

RUN \
    git clone https://github.com/microsoft/restler-fuzzer.git /restler && \
    mkdir -p /restler/bin && \
    ln /usr/bin/python3 /usr/bin/python && \
    python3 /restler/build-restler.py --dest_dir /restler/bin
