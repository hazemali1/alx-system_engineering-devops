#!/usr/bin/python3
import requests
import sys


user = requests.get('https://jsonplaceholder.typicode.com/users').json()
for u in user:
	for k , v in u.items():
		if k == 'id' and v == 2:
			print(v)
