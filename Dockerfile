### =========================================================
# TODO: https://andrewrea.co.uk/posts/distroless-nginx/
# https://github.com/TheProjectAurora/distroless-nginx/blob/main/Dockerfile
# EASY AS THAT? https://github.com/kyos0109/nginx-distroless/blob/master/Dockerfile


# works
FROM nginx:latest
COPY index.html /usr/share/nginx/html/index.html

# ================

# FROM nginx:1.18.0 as base

# # https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
# ARG TIME_ZONE
# COPY ./index.html ./

# RUN mkdir -p /opt/var/cache/nginx && \
#     cp -a --parents /usr/lib/nginx /opt && \
#     cp -a --parents /usr/share/nginx /opt && \
#     cp -a --parents /var/log/nginx /opt && \
#     cp -aL --parents /var/run /opt && \
#     cp -a --parents /etc/nginx /opt && \
#     cp -a --parents /etc/passwd /opt && \
#     cp -a --parents /etc/group /opt && \
#     cp -a --parents /usr/sbin/nginx /opt && \
#     cp -a --parents /usr/sbin/nginx-debug /opt && \
#     cp -a --parents /lib/x86_64-linux-gnu/ld-* /opt && \
#     cp -a --parents /lib/x86_64-linux-gnu/libpcre.so.* /opt && \
#     cp -a --parents /lib/x86_64-linux-gnu/libz.so.* /opt && \
#     cp -a --parents /lib/x86_64-linux-gnu/libc* /opt && \
#     cp -a --parents /lib/x86_64-linux-gnu/libdl* /opt && \
#     cp -a --parents /lib/x86_64-linux-gnu/libpthread* /opt && \
#     cp -a --parents /lib/x86_64-linux-gnu/libcrypt* /opt && \
#     cp -a --parents /usr/lib/x86_64-linux-gnu/libssl.so.* /opt && \
#     cp -a --parents /usr/lib/x86_64-linux-gnu/libcrypto.so.* /opt && \
#     cp /usr/share/zoneinfo/${TIME_ZONE:-ROC} /opt/etc/localtime

# FROM gcr.io/distroless/base-debian10

# COPY --from=base /opt /
# COPY --from=base /index.html /usr/share/nginx/html/index.html

# EXPOSE 80 443

# ENTRYPOINT ["nginx", "-g", "daemon off;"]
