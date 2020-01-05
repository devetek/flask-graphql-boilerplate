class Session:
    def __init__(self, set_provider="redis", set_host="localhost", set_port=6379, set_db=0, set_expired_token=86400, set_expired_token_r=172800):
        if set_provider not in self._available_provider:
            print("Set with available provider!")

        from .provider import RedisProvider

        self._host = set_host
        self._port = set_port
        self._db = set_db
        self._expired_token = set_expired_token
        self._expired_token_r = set_expired_token_r

        self._provider = RedisProvider(self._host, self._port, self._db)

    def save_token(self, key, value=None):
        expired = self._expired_token

        return self._provider.save_token(key, value, expired)

    def get_token(self, key):
        return self._provider.get_token(key)

    def save_token_r(self, key, value=None):
        expired = self._expired_token_r*2

        return self._provider.save_token_r(key, value, expired)

    def get_token_r(self, key):
        return self._provider.get_token_r(key)

    @property
    def _available_provider(self):
        return ['redis']
