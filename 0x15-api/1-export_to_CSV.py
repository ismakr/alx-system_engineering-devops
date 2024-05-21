#!/usr/bin/python3
"""
for a given employee ID, returns information about his/her
TODO list progress, using rest api.
export data in the CSV format.
"""
import json
import requests
import sys
if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com/'
    response = requests.get(url + 'todos/')
    res = response.json()
    k, v = 'userId', int(sys.argv[1])
    alltask = 0
    completed = 0
    for user in res:
        if k in user and v == user[k]:
            alltask += 1
            if 'completed' in user and user['completed'] is True:
                completed += 1
    response = requests.get(url + 'users/')
    nameres = response.json()
    k1, v1 = 'id', int(sys.argv[1])
    for user1 in nameres:
        if k1 in user1 and v1 == user1[k1]:
            name = user1['username']
    filename = f"{sys.argv[1]}.csv"
    with open(filename, 'w') as f:
        for user in res:
            if k in user and v == user[k]:
                f.write(f"\"{user['userId']}\",\"{name}\",\"\
{user['completed']}\",\"{user['title']}\"\n")
