#coding=utf-8
from flask import render_template
from flask import request

from app import app
from db import pg 

import json


@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'GET':
        return render_template("index.html")
    else:
        print request.form['turns']
        print request.form['onesNum']
        dataList = list()
        for i in xrange(int(request.form['onesNum'])):
            dataList.append(['1', '/static/test.jpg', 'liusong', 'hanfu'])
        
        return json.dumps({'data':dataList})