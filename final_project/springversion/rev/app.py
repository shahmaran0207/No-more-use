from flask import Flask, jsonify
import pandas as pd
from math import sqrt
from sklearn.model_selection import train_test_split
from sklearn import linear_model
import numpy as np
from sklearn.preprocessing import StandardScaler

app = Flask(__name__)

@app.route('/data')
def get_data():
    data = {"message": "This data is from Python!"}
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True)
