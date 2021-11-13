FROM public.nexus.cams7.ml/alpine:3.13.6
WORKDIR /app
COPY ./server .
RUN chmod +x /app/server
CMD ["/app/server"]