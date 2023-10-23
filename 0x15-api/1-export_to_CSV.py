#!/usr/bin/python3
"""
decumented for models
"""
import requests
import sys
import csv
"""
request and sys
"""

if __name__ == "__main__":
    user = requests.get('https://jsonplaceholder.typicode.com/users').json()
    todo = requests.get('https://jsonplaceholder.typicode.com/todos').json()
    with open(sys.argv[1] + ".csv", "w") as f:
        w = csv.writer(f)
    for u in user:
        if u['id'] == int(sys.argv[1]):
            name = u['username']

    for t in todo:
        lis = []
        if t['userId'] == int(sys.argv[1]):
            lis.append(sys.argv[1])
            lis.append(',')
            lis.append(name)
            lis.append(',')
            lis.append(t['completed'])
            lis.append(',')
            lis.append(t['title'])
