FROM scratch as builder
WORKDIR /go-cpp-hello-world/
COPY plik.cpp .



FROM cpp:latest
COPY --from=builder /go-cpp-hello-world/plik.cpp .
CMD ["plik.cpp"]]
