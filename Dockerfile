# nginx:alpine3.21
FROM nginx:alpine3.21 AS nginx-default
# use additional context called final-project copy out the 
# docs folder contents to the default nginx html folder:
RUN rm -rf /usr/share/html/*
COPY --from=final-project docs/ /usr/share/nginx/html/


