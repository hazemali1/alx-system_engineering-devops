#!/usr/bin/python3
"""
decumented for models
"""
import requests
import sys
"""
request and sys
"""

if __name__ == "__main__":
    user = requests.get('https://jsonplaceholder.typicode.com/users').json()
    todo = requests.get('https://jsonplaceholder.typicode.com/todos').json()
    for u in user:
        if u['id'] == int(sys.argv[1]):
            name = u['name']

    numbers = 0
    done = 0
    for t in todo:
        if t['userId'] == int(sys.argv[1]):
            numbers += 1
            if t['completed'] is True:
                done += 1

    print("Employee {} is done with tasks({}/{}):".format(name, done, numbers))

    for t in todo:
        if t['userId'] == int(sys.argv[1]):
            if t['completed'] is True:
                print("\t " + t['title'])
