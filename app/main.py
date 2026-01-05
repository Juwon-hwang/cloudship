from fastapi import FastAPI
import os
import subprocess

app = FastAPI()

def get_git_sha_short() -> str:
    env_sha = os.getenv("GIT_SHA")
    if env_sha:
        return env_sha[:7]
    try:
        sha = subprocess.check_output(["git", "rev-parse", "--short", "HEAD"], text=True).strip()
        return sha
    except Exception:
        return "unknown"

@app.get("/")
def root():
    return {"message": "CloudShip API is running"}

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/version")
def version():
    return {"git_sha": get_git_sha_short()}