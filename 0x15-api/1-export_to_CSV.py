#!/usr/bin/python3
"""Reads the to-do list from api for id passed"""

import csv
import requests
import sys


base_url = 'https://jsonplaceholder.typicode.com/'


def do_requestUser():
    """Performs request of user"""
    if not len(sys.argv):
        return print('USAGE:', __file__, '<employee id>')
    eid = sys.argv[1]
    try:
        _eid = int(sys.argv[1])
    except ValueError:
        return print('Employee id must be an integer')
    the_reply = requests.get(base_url + 'users/' + eid)
    if the_reply.status_code == 404:
        return print('User id not found')
    elif the_reply.status_code != 200:
        return print('Error: status_code:', the_reply.status_code)
    user = the_reply.json()
    the_reply = requests.get(base_url + 'todos/')
    if the_reply.status_code != 200:
        return print('Error: status_code:', the_reply.status_code)
    todos = the_reply.json()
    user_todos = [todo for todo in todos
                  if todo.get('userId') == user.get('id')]
    completed = [todo for todo in user_todos if todo.get('completed')]

    with open(eid + '.csv', 'w') as csvfile:
        writer = csv.writer(csvfile, lineterminator='\n',
                            quoting=csv.QUOTE_ALL)
        [writer.writerow(['{}'.format(field) for field in
                          (todo.get('userId'), user.get('username'),
                           todo.get('completed'), todo.get('title'))])
         for todo in user_todos]


if __name__ == '__main__':
    do_requestUser()
