openssl req -x509 -newkey rsa:2048 -nodes \
    -keyout $HOME/.dinghy/certs/breezechms.docker.key \
    -out $HOME/.dinghy/certs/breezechms.docker.crt \
    -days 365 \
    -subj "/C=US/ST=California/L=San Francisco/O=MyOrganization/OU=Com/CN=MyOrganization.com"
