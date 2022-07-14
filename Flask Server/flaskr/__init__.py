from flask import Flask, jsonify, request
import json
app = Flask(__name__)
power = "Online"
@app.route("/", methods=["POST", "GET"])
def hello_world():
    global power
    if request.method == "POST":
        power = json.loads(request.data)["power"]
        
        return jsonify("['accepted']")
    elif request.method == "GET":
        return power
    
