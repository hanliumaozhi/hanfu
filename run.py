#!/usr/bin/python
from app import app
import db

app.run(debug = True)

db.pg.close()