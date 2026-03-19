ARG BENTOPDF_VERSION=
FROM bentopdfteam/bentopdf-simple:${BENTOPDF_VERSION} 

RUN chmod +rx /var/lib/nginx