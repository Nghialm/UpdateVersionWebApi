import flask
from flask import request, jsonify

app = flask.Flask(__name__)
app.config["DEBUG"] = True

@app.route('/', methods=['GET'])
def home():
    return "<h1>Distant Reading Archive</h1><p>This site is a prototype API for distant reading of science fiction novels.</p>"

@app.route('/api/v1/resources/version/get', methods=['GET'])
def api_update():
    fver = open("version.txt", "r")
    ver = fver.read()
    fver.close()

    query_parameters = request.args

    version = query_parameters.get('version')
    data = {'version': ver, 'link': "abc.com"}
    if version == 'ALL':
        return jsonify(
            data
        )
    else:
        return "Get package: " + version

app.run()