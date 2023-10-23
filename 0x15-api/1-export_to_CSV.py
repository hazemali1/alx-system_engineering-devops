#!/usr/bin/python3
"""
decumented for models
"""
import csv
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
            name = u['username']

    with open(sys.argv[1] + ".csv", "w") as f:
        w = csv.writer(f, quoting=csv.QUOTE_ALL)
        for t in todo:
            lis = []
            if t['userId'] == int(sys.argv[1]):
                lis.append(sys.argv[1])
                lis.append(name)
                lis.append(t['completed'])
                lis.append(t['title'])
                w.writerow(lis)
