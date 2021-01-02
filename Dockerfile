FROM golang:1.15-alpine AS builder

WORKDIR /go/app
COPY . .

RUN go build ./cmd/go-modules-update-bore-actions
#CMD ["go", "build", "./cmd/go-modules-update-bore-actions"]



FROM golang:1.15-alpine

COPY --from=builder /go/app/go-modules-update-bore-actions .

ENTRYPOINT ["./go-modules-update-bore-actions"]
