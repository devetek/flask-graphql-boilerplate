import hashlib

"""[Function used for hashing string with md5]

Returns:
    [string] -- [Return string hash md5 from string input]
"""


def md5(my_string):
    m = hashlib.md5()
    m.update(my_string.encode('utf-8'))

    return m.hexdigest()
