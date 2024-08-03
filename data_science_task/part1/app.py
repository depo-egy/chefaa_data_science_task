from flask import Flask,  jsonify
import pandas as pd


app = Flask("__name__")

def load_data():
    data = pd.read_csv("cleaned.csv")
    return data

@app.route('/data/<int:number>', methods=['GET'])
def get_highest_paid_employees(number):
    data = load_data()
    highest_paid = list(data.sort_values(by=['Salary'], ascending=False)['Name'].head(number).values)
    return jsonify(highest_paid)

@app.route('/data/department/<depart>', methods=['GET'])
def get_number_of_employees_in_department(depart):
    data = load_data()
    df = data.groupby('Department', group_keys=True)['Name']
    dep_count = df.get_group(depart).count()
    return jsonify({f"number of employees in {depart} department":str(dep_count)})

if __name__== "__main__":
    app.run(debug=True)
