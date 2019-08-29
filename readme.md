# Generate SSL certificate using Letsencrypt DNS (TXT) verification

#### 1. Setup ENV variable
```sh
export CERT_EMAIL=your@email.com
export CERT_DOMAIN=example.com
```

#### 2. Run docker 
```sh
docker run \
    -v $(pwd)/etc:/etc/letsencrypt \
    -v $(pwd)/var:/var/lib/letsencrypt \
    -e CERT_EMAIL=$CERT_EMAIL \
    -e CERT_DOMAIN=$CERT_DOMAIN \
    sandeshshrestha/letsencrypt-ssl-certificate-generator:latest generate
```

#### 3. Add TXT record in the domains DNS settings
Name and value for TXT record will be printed on you terminal. Copy that and add it to you DNS settings.
#### 4. Wait for TXT to propagate
Could take around 10 mins.
#### 5. Click <ENTER> to verify the DNS settings
#### 6. Find you certificate
Your certificates are ready to be used in `./etc/live/$CERT_DOMAIN` directory.