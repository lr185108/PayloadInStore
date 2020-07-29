from flask import Flask, request
from flask_cors import CORS

import sys
import StoreManager
app = Flask(__name__)
CORS(app)

@app.route('/stores/',methods=['GET'])
def GetStores():
    query = ''
    alt = request.args.get("alt", '32.0879122')
    lng = request.args.get("lng", '34.7724783')
    chain= request.args.get("chain", 'supersal')
    storeManager = StoreManager.StoreManeger()
    print('Input: ' + alt + ' ' + lng + ' ' + chain)
    query = storeManager.getFromGoogle(alt, lng, chain)
    print(query)
    return query

if __name__ == '__main__':
    app.run(port='5003')
