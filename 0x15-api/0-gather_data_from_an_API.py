#!/usr/bin/python3
import requests


user = requests.get('https://jsonplaceholder.typicode.com/users')
print(user.json())
