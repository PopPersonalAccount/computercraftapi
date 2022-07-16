
from flask import Flask, jsonify, request
import json
import requests
app = Flask(__name__)
power = ""
@app.route("/", methods=["POST", "GET"])
def handler():
    global power
    if request.method == "POST":
        dataList = list(request.form.keys())[0][:-3]
        dataList += '"]]}'
        dataList = dataList.replace("'", '"')
        print(dataList)
        
        return "test"
    else:
        return power
