import logging

from flask import Flask, send_from_directory, render_template
import pymysql

db_user = 'root'
db_password = 'localroot1234'
db_name = 'cloudsummit2019'
db_host = '127.0.0.1'

app = Flask(__name__)


@app.route('/')
def main():
    cnx = pymysql.connect(user=db_user, password=db_password, host=db_host, db=db_name)

    with cnx.cursor() as cursor:
        cursor.execute('SELECT name, description, technos, picture, icon, url FROM projects')
        results = cursor.fetchall()
    cnx.close()

    logging.info('{} project(s) have been retrieved from the database.'.format(len(results)))

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
    logging.info('This asset has been requested: {}'.format(path))
    return send_from_directory('assets', path)


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)
