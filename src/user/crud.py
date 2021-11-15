import os
from fastapi_sqlalchemy import DBSessionMiddleware
from fastapi_sqlalchemy import db
from models import User as ModelUser
from schemas import User as SchemaUser
from dotenv import load_dotenv

