#!/usr/bin/python3
"""Reads the to-do list from api for employee id passed"""
import requests
import sys
from urllib.parse import urljoin


BASE_URL = 'https://jsonplaceholder.typicode.com/'


def get_user_data(employee_id):
    """
    Get user data from the API.

    Args:
        employee_id (int): The employee ID.

    Returns:
        dict: User data as a dictionary or None if not found.
    """
    user_url = urljoin(BASE_URL, f'users/{employee_id}')
    response = requests.get(user_url)
    if response.status_code == 404:
        print('User id not found')
        return None
    if response.status_code != 200:
        print(f'Error: status_code: {response.status_code}')
        return None
    return response.json()


def get_user_todos(employee_id):
    """
    Get user's TODO list from the API.

    Args:
        employee_id (int): The employee ID.

    Returns:
        list: List of user's TODO items.
    """
    todos_url = urljoin(BASE_URL, 'todos')
    response = requests.get(todos_url)
    if response.status_code != 200:
        print(f'Error: status_code: {response.status_code}')
        return []
    return [todo for todo in response.json() if todo.get('userId') ==
            employee_id]


def main():
    """
    Main function to fetch and display employee's TODO list progress.
    """
    if len(sys.argv) < 2:
        print(f'USAGE: {sys.argv[0]} <employee id>')
        return

    try:
        employee_id = int(sys.argv[1])
    except ValueError:
        print('Employee id must be an integer')
        return

    user_data = get_user_data(employee_id)
    if user_data is None:
        return

    user_todos = get_user_todos(employee_id)
    completed = [todo for todo in user_todos if todo.get('completed')]

    print('Employee', user_data['name'], 'is done with tasks ({}/{}):'.format(
        len(completed), len(user_todos)))
    for todo in completed:
        print('\t', todo['title'])


if __name__ == '__main__':
    main()
