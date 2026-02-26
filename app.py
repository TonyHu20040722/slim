import os
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {"status": "ok"}

# Cloud Run uses uvicorn to serve FastAPI; no need for app.run()
