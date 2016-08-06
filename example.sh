wget http://hl7.org/fhir/fhir-spec.zip
unzip fhir-spec.zip

docker run --name fhir-nginx \
    -v $(pwd)/default.conf:/etc/nginx/conf.d/default.conf:ro \
    -v $(pwd)/site:/usr/share/nginx/html:ro \
    -d nginx
