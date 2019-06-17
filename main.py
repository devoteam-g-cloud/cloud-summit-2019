import os
import logging

from flask import Flask, send_from_directory, render_template
import pymysql

db_user = os.environ.get('CLOUD_SQL_USERNAME') or 'root'
db_password = os.environ.get('CLOUD_SQL_PASSWORD') or 'localroot1234'
db_name = os.environ.get('CLOUD_SQL_DATABASE_NAME') or 'cloudsummit2019'
db_connection_name = os.environ.get('CLOUD_SQL_CONNECTION_NAME')

app = Flask(__name__)


@app.route('/')
def main():
    # When deployed to App Engine, the `GAE_ENV` environment variable will be
    # set to `standard`
    if os.environ.get('GAE_ENV') == 'standard':
        # If deployed, use the local socket interface for accessing Cloud SQL
        unix_socket = '/cloudsql/{}'.format(db_connection_name)
        cnx = pymysql.connect(user=db_user, password=db_password,
                              unix_socket=unix_socket, db=db_name)
    else:
        cnx = pymysql.connect(user=db_user, password=db_password,
                              host='127.0.0.1', db=db_name)

    with cnx.cursor() as cursor:
        cursor.execute('SELECT name, description, technos, picture, icon, url FROM projects')
        results = cursor.fetchall()
    cnx.close()

    projects = [{
        'name': result[0],
        'description': result[1],
        'technos': result[2],
        'picture': result[3],
        'icon': result[4],
        'url': result[5]
    } for result in results]

    return render_template('index.html', projects=projects)


@app.route('/assets/<path:path>')
def serve_assets(path):
    return send_from_directory('assets', path)


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)
