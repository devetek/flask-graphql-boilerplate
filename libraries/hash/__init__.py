import hashlib

from passlib.hash import pbkdf2_sha256 as sha256

"""[Function used for hashing string with md5]

Returns:
    [string] -- [Return string hash md5 from string input]
"""


def md5(my_string):
    m = hashlib.md5()
    m.update(my_string.encode('utf-8'))

    return m.hexdigest()


def generate_hash256(string):
    return sha256.hash(string)


def verify_hash256(string, hash):
    return sha256.verify(string, hash)
