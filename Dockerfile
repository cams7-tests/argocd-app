FROM public.nexus.cams7.ml/alpine:3.13.6
RUN --mount=type=secret,id=app_info \
  cat /run/secrets/app_info
WORKDIR /app
COPY ./server .
RUN chmod +x /app/server
CMD ["/app/server"]