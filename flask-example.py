from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    import sys
    python_version = sys.version_info.major;

    return "Hello World! I'm running on Python {0}".format(python_version)

if __name__ == "__main__":
    app.run()
