#!/usr/bin/python3
"""
import requests
"""
import requests


def number_of_subscribers(subreddit):
    """
    subscribers
    """
    req = requests.get("https://www.reddit.com/r/{}/about.json"
                       .format(subreddit))
    if req.status_code >= 200 and < 300:
        return (req.json().get("data").get("subscribers"))
    else:
        return 0
