""" DOCSTRING """

from flask import Flask
from flask import request

app = Flask(__name__)


@app.route('/', methods=['POST'])
def return_post():
""" DOCSTRING """
    print(request.data)
    return request.data

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=9095)
