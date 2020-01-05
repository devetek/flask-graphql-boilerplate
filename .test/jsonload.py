import json
import time

import orjson

m = {
    "timestamp": 1556283673.1523004,
    "task_uuid": "0ed1a1c3-050c-4fb9-9426-a7e72d0acfc7",
    "task_level": [1, 2, 1],
    "action_status": "started",
    "action_type": "main",
    "key": "value",
    "another_key": 123,
    "and_another": ["a", "b"],
}


def benchmark(name, dumps):
    start = time.time()
    for i in range(1000000):
        dumps(m)
    print(name, time.time() - start)


benchmark("Python", json.dumps)
# orjson only outputs bytes, but often we need unicode:
benchmark("orjson", lambda s: str(orjson.dumps(s), "utf-8"))
