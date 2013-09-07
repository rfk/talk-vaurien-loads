
import json
import random

import loads

server_url = "http://nzpycon.services.mozilla.com"

class StressTest(loads.TestCase):


  def test_storage(self):
    base_url = server_url + "/1.1/rfkelly"
    self.session.auth = ("rfkelly", "SunshineAndPuppies")
    r = self.session.get(base_url + "/info/collections")
    r.raise_for_status()

    assert "bookmarks" in json.loads(r.content)
    r = self.session.get(base_url + "/storage/bookmarks")
    r.raise_for_status()


