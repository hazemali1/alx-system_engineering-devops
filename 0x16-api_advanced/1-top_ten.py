#!/usr/bin/python3
"""
import requests
"""
import requests


def top_ten(subreddit):
    """
    subscribers
    """
    req = requests.get("https://www.reddit.com/r/{}/hot.json"
                       .format(subreddit),
                       headers={"User-Agent": "User-Agent"})
