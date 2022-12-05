ARG PROFILE=perl

FROM ghcr.io/dellelce/mkit-base as build

RUN ./mkit.sh profile=$PROFILE /app/$PROFILE

FROM alpine:3.8 as target

COPY --from=build /app/$PROFILE /app/$PROFILE
