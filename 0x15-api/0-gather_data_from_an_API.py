#!/usr/bin/python3
import requests
import sys


user = requests.get('https://jsonplaceholder.typicode.com/users').json()
for u in user:
	if u.keys().id == 2:
		print("Please")
