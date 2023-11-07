#!/usr/bin/python3
"""
import
"""
import requests
recurse = __import__('2-recurse').recurse


def count_words(subreddit, word_list, word_count={}):
    """
    count words
    """
    sub_info = requests.get("https://www.reddit.com/r/{}/hot.json"
                            .format(subreddit),
                            headers={"User-Agent": "My-User-Agent"})
    if sub_info.status_code != 200:
        return None
    lis = recurse(subreddit)
    if not lis:
        return None
    for title in lis:
        for word in word_list:
            for s_word in title:
                if s_word.lower() == word.lower():
                    word_count[word] += 1

    if not sub_info.json().get("data").get("after"):
        sorted_counts = sorted(word_count.items(), key=lambda kv: kv[0])
        sorted_counts = sorted(word_count.items(),
                               key=lambda kv: kv[1], reverse=True)
        [print('{}: {}'.format(k, v)) for k, v in sorted_counts if v != 0]
    else:
        return count_words(subreddit, word_list, word_count)
