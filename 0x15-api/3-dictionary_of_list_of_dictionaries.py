#!/usr/bin/python3
"""Reads the to-do list from api for id passed and turns into json file"""

import json
import requests


base_url = 'https://jsonplaceholder.typicode.com/'


def do_requestUser():
    """Performs request of user"""
    the_reply = requests.get(base_url + 'users/')
    if the_reply.status_code != 200:
        return print('Error: status_code:', the_reply.status_code)
    users = the_reply.json()
    the_reply = requests.get(base_url + 'todos/')
    if the_reply.status_code != 200:
        return print('Error: status_code:', the_reply.status_code)
    todos = the_reply.json()
    data = {}
    for user in users:
        user_todos = [todo for todo in todos
                      if todo.get('userId') == user.get('id')]
        user_todos = [{'username': user.get('username'),
                       'task': todo.get('title'),
                       'completed': todo.get('completed')}
                      for todo in user_todos]
        data[str(user.get('id'))] = user_todos

    with open('todo_all_employees.json', 'w') as file:
        json.dump(data, file)


if __name__ == '__main__':
    do_requestUser()
