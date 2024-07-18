from flask import Flask, render_template_string
import psycopg2

app = Flask(__name__)

def get_db_connection():
    conn = psycopg2.connect(
        host="postgres",
        database="addressbook",
        user="user",
        password="password"
    )
    return conn

@app.route('/')
def index():
    conn = get_db_connection()
    cur = conn.cursor()
    cur.execute('SELECT * FROM addresses;')
    addresses = cur.fetchall()
    cur.close()
    conn.close()

    print(addresses[1])

    html = '''
    <!DOCTYPE html>
    <html>
    <head>
        <title>Address Book</title>
    </head>
    <body>
        <h1>Address Book</h1>
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Phone</th>
                <th>Street Address</th>
                <th>City</th>
                <th>State</th>
                <th>Zipcode</th>
            </tr>
            {% for address in addresses %}
            <tr>
                <td>{{ address[1] }}</td>
                <td>{{ address[2] }}</td>
                <td>{{ address[3] }}</td>
                <td>{{ address[4] }}</td>
                <td>{{ address[5] }}</td>
                <td>{{ address[6] }}</td>
            </tr>
            {% endfor %}
        </table>
    </body>
    </html>
    '''

    return render_template_string(html, addresses=addresses)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
