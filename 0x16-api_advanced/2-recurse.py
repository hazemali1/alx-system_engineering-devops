#!/usr/bin/python3
"""
import requests
"""
import requests


def recurse(subreddit, hot_list=[]):
    """
    subscribers
    """
    req = requests.get("https://www.reddit.com/r/{}/hot.json"
                       .format(subreddit),
                       headers={"User-Agent": "User-Agent"})
    if req.status_code < 300:
        for s in range(0, len(req.json().get("data").get("children"))):
            hot_list.append(req.json().get("data").get("children")[s]
                     .get("data").get("title"))
        return hot_list
    else:
        return None
