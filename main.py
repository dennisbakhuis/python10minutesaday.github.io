from flask import Flask
from flask import render_template

app = Flask(__name__)

# get article data
with open('articles.data') as f:
    data = f.readlines()
articles = [x.split('|') for x in data]

@app.route("/")
def hello():
    return render_template('index.html', articles=articles)

if __name__ == "__main__":
    app.run(debug=False)

