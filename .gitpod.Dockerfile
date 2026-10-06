FROM mikkonecny/astonplc:ghc844

# RUN mv /root/.ghcup/ghc/8.10.7/bin/* /usr/local/bin

USER root
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs \
    | sh -s -- -y --default-toolchain stable \
 && ln -sf /root/.cargo/bin/rustc  /usr/local/bin/rustc \
 && ln -sf /root/.cargo/bin/cargo  /usr/local/bin/cargo \
 && ln -sf /root/.cargo/bin/rustup /usr/local/bin/rustup
