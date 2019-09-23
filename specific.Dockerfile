FROM ekidd/rust-musl-builder AS build-stage
ARG tag
RUN git clone https://github.com/jakedeichert/mask.git \
    && cd mask                                         \
    && git checkout "refs/tags/$tag"                   \
    && cargo build --release

FROM scratch
COPY --from=build-stage /home/rust/src/mask/target/x86_64-unknown-linux-musl/release/mask /mask
