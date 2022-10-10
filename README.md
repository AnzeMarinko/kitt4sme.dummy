# KITT4SME Dummy

Install Python (`>= 3.8`), Poetry (`>=1.1`) and the usual Docker
stack (Engine `>= 20.10`, Compose `>= 2.1`).

```console
$ poetry install
$ poetry shell
```

Build and run the Docker image:

```bash
$ docker build -t anzemarinko/kitt4sme.dummy .
$ docker run -p 8000:8000 anzemarinko/kitt4sme.dummy
```
