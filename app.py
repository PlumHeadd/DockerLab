from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello Docker Lab"

@app.route("/extra")
def extra():
    return "This is an extra endpoint!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=4000)
