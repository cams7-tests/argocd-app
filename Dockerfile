FROM public.nexus.cams7.ml/alpine:3.13.6
WORKDIR /app
COPY . .
CMD ["/app/server"]