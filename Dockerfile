
FROM public.nexus.cams7.ml/golang:1.17.2-stretch as build

WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o server main.go

FROM public.nexus.cams7.ml/alpine:3.13.6
WORKDIR /app
COPY --from=build /app/server .
CMD ["/app/server"]