#!/usr/bin/python3
"""
Module to query the Reddit API and print the titles of the first 10 hot posts listed for a given subreddit.
"""
import requests

def top_ten(subreddit):
    """
    Function that queries the Reddit API and prints the titles of the first 10 hot posts listed for a given subreddit.
    If not a valid subreddit, print None.
    """
    url = (
        f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"
    )
    headers = {"User-Agent": "My User Agent 1.0"}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        try:
            data = response.json()
            for post in data['data']['children']:
                print(post['data']['title'])
        except ValueError:
            print(None)
    else:
        print(None)
