#!/usr/bin/python3
"""returns the number of subscribers"""
import requests

BASE_URL = 'http://reddit.com/r/{}/about.json'


def number_of_subscribers(subreddit):
    """returns the number of subscribers"""
    headers = {'User-agent': 'Unix:0-subs:v1'}
    response = requests.get(BASE_URL.format(subreddit), headers=headers)

    if response.status_code != 200:
        return 0
    try:
        data = response.json()
        if 'data' in data and 'subscribers' in data['data']:
            return data['data']['subscribers']
    except (ValueError, KeyError):
        pass

    return 0
