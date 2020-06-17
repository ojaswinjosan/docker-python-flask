from flask import Flask

app = Flask(__name__)

# Homepage
@app.route("/")
def index():
    return "Text"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080, debug=True)
