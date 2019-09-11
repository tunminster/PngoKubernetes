#ref: https://www.selfsignedcertificate.com/
# Generate tls key
openssl genrsa -out hello-world.info.key 2048

# Generate tls cert
openssl req -new -x509 -key hello-world.info.key -out hello-world.info.cert -days 3650 -subj /CN=hello-world.info


#or
$ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ${KEY_FILE} -out ${CERT_FILE} -subj "/CN=${HOST}/O=${HOST}"

