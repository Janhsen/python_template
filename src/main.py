### DEMO CODE CAN BE DELETED


from typing import Optional
from fastapi import FastAPI

from sub import subclass
app = FastAPI()

@app.get("/")
async def root():
    sub = subclass()
    return {"message": "Hello World!"}
