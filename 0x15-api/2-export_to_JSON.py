#!/usr/bin/python3
"""
decumented for models
"""
import json
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

    lis = []
    my_dict = {}
    for t in todo:
        dic = {}
        if t['userId'] == int(sys.argv[1]):
            dic["task"] = t['title']
            dic["completed"] = t['completed']
            dic["username"] = name
            lis.append(dic)

    my_dict[sys.argv[1]] = lis
    my_obj = json.dumps(my_dict)

    with open(sys.argv[1] + ".json", "w") as f:
        f.write(my_obj)
