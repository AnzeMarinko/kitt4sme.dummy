from fastapi import FastAPI
import time

from loguru import logger


app = FastAPI()


@app.get("/")
def version():
    logger.info("Version")
    return {"version": "0.0.0"}


@app.get("/hello")
def hello_world():
    for i in range(5):
        logger.info(f"Hello world {i}!")
        time.sleep(1)
    return {"Hello": "World"}
