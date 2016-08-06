wget http://hl7.org/fhir/fhir-spec.zip
unzip fhir-spec.zip
cp apache/.htaccess site/.htaccess

docker run \
    -p 8000:80 \
    -v $(pwd)/apache/httpd.conf:/usr/local/apache2/conf/httpd.conf:ro \
    -v $(pwd)/site:/usr/local/apache2/htdocs:ro \
    httpd
