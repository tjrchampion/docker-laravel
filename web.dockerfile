#@ latest but for production should be a specifed version nginx:.13.12
FROM nginx

#add our editable config to our container
ADD vhost.conf /etc/nginx/conf.d/default.conf