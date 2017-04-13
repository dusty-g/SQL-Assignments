from flask import Flask, render_template, request, redirect, session
from mysqlconnection import MySQLConnector


app = Flask(__name__)
db = MySQLConnector(app, "frienddb")
@app.route("/")
def index():
    
    friends = db.query_db("select * from friends")
    print friends
    return render_template("index.html", all_friends = friends)
@app.route("/add", methods = ["POST"])
def add():
    query = "INSERT INTO friends (name, age) VALUES (:name, :age)"
    data = {
        'name': request.form['name'],
        'age': request.form['age']
    }
    if (data['name'] and data ['age']):
        db.query_db(query, data)
        return redirect("/")
    else:
        return redirect("/")
app.run(debug=True)