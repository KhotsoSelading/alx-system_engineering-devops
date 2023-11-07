import requests
"""
queries the Reddit API, parses the title of all hot articles,
and prints a sorted count of given keywords
"""
BASE_URL = 'http://www.reddit.com/r/{}/hot.json'


def count_words(subreddit, word_list, found_list=None, after=None):
    """
    queries the Reddit API, parses the title of all hot articles,
    and prints a sorted count of given keywords
    """
    if found_list is None:
        found_list = []

    user_agent = {'User-agent': 'test45'}
    params = {'after': after} if after else {}
    response = requests.get(BASE_URL, headers=user_agent, params=params)

    if response.status_code == 200:
        data = response.json()['data']
        posts = data['children']
        after = data.get('after')

        for post in posts:
            title = post['data']['title'].lower()
            words = title.split()
            for word in words:
                if word in word_list:
                    found_list.append(word)

        if after:
            count_words(subreddit, word_list, found_list, after)
        else:
            word_count = {}
            for word in found_list:
                word_count[word] = word_count.get(word, 0) + 1

            sorted_word_count = sorted(
                word_count.items(),
                key=lambda item: (-item[1], item[0]))
            for word, count in sorted_word_count:
                print(f'{word}: {count}')

    else:
        print(f"Error: {response.status_code}")


if __name__ == "__main__":
    import sys
    if len(sys.argv) < 3:
        print("Usage: {} <subreddit> <list of keywords>".format(sys.argv[0]))
        print(
            "Ex: {} programming 'python java javascript'".format(sys.argv[0]))
    else:
        count_words(sys.argv[1], set(sys.argv[2].lower().split()))
