#!/usr/bin/python3
import requests
import sys


user = requests.get('https://jsonplaceholder.typicode.com/users').json()
todo = requests.get('https://jsonplaceholder.typicode.com/todos').json()
for u in user:
	if u['id'] == int(sys.argv[1]):
		name = u['name']

numbers = 0
done = 0
for t in todos:
	if t['userId'] == int(sys.argv[1]):
		numbers += 1
		if t['completed'] == 'true':
			done += 1

print("Employee {} is done with tasks({}/{}}):".format(name, numbers, done))
