mkdir ca && cd ca &&

openssl req -x509 -nodes -newkey rsa:2048 -days 365 \
  -keyout key.pem -out cert.pem \
  -subj "/C=CN/ST=Shanghai/L=Shanghai/O=Dev/OU=Dev/CN=docker.local" \
  -addext "subjectAltName=DNS:docker.local,DNS:*.docker.local"