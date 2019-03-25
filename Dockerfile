FROM alpine:3.8 as builder
RUN apk add --no-cache ca-certificates tzdata

FROM scratch
LABEL maintainer="Xijun Dai <daixijun1990@gmail.com>"
COPY --from=builder /usr/share/zoneinfo /usr/share/zoneinfo
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
