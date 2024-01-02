# Javier Gonzalez Portfolio

Phoenix application built as a docker container.

To build image:

`podman build --tag portfolio .`

To run the image:

`podman run -e SECRET_KEY_BASE=<some_secret_key> -p 8080:4000 --name portfolio_container portfolio`

Open http://localhost:8080 in a web browser.
