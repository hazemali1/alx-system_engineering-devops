#!/usr/bin/python3
"""
decumented for models
"""
import json
import requests
"""
request and sys
"""

if __name__ == "__main__":
    user = requests.get('https://jsonplaceholder.typicode.com/users').json()
    todo = requests.get('https://jsonplaceholder.typicode.com/todos').json()

    my_dict = {}
    for u in user:
        lis = []
        id = u['id']
        for t in todo:
            dic = {}
            if id == t['userId']:
                    dic["username"] = u['username']
                    dic["task"] = t['title']
                    dic["completed"] = t['completed']
                    lis.append(dic)
        my_dict[id] = lis

    my_obj = json.dumps(my_dict)

    with open("todo_all_employees.json", "w") as f:
        f.write(my_obj)
