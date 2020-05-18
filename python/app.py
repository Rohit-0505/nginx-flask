# app.py - a minimal flask api using flask_restful
from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

class HelloWorld(Resource):
    def get(self):
        multiline_str = ("Welcome to Flask Docker container! calico performance benchmarking test! The frontend is nginx container!\n"
                "Welcome to Flask Docker container! calico performance benchmarking test! The frontend is nginx container!\n"
                "Welcome to Flask Docker container! calico performance benchmarking test! The frontend is nginx container!\n"
                "Welcome to Flask Docker container! calico performance benchmarking test! The frontend is nginx container!\n"
                "Welcome to Flask Docker container! calico performance benchmarking test!")
        return multiline_str

api.add_resource(HelloWorld, '/')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
