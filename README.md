
# expose-docker

Optimized Docker image for beyondcode/expose

## Deployment

To deploy this container run the following steps:

Configure:

```yaml
version: "3.7"
services:
  expose:
    image: ghcr.io/wartner-io/expose-docker:main
    ports:
      - 8080:${PORT}
    environment:
      port: ${PORT}
      domain: ${DOMAIN}
      username: ${ADMIN_USERNAME}
      password: ${ADMIN_PASSWORD}
    restart: always
    volumes:
      - ./database/expose.db:/root/.expose

```

Run:

```bash
docker compose up -d
```

## Support

For support, email florian@wartner.io or join my Discord channel.


## Authors

- [@fwartner](https://www.github.com/fwartner)


## License

[MIT](https://choosealicense.com/licenses/mit/)
