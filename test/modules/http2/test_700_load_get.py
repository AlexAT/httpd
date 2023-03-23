import pytest

from .env import H2Conf, H2TestEnv


@pytest.mark.skipif(condition=H2TestEnv.is_unsupported, reason="mod_http2 not supported here")
@pytest.mark.skipif(not H2TestEnv().h2load_is_at_least('1.41.0'),
                    reason="h2load misses --connect-to option")
class TestLoadGet:

    @pytest.fixture(autouse=True, scope='class')
    def _class_scope(self, env):
        H2Conf(env).add_vhost_cgi().add_vhost_test1().install()
        assert env.apache_restart() == 0

    def check_h2load_ok(self, env, r, n):
        assert 0 == r.exit_code
        r = env.h2load_status(r)
        assert n == r.results["h2load"]["requests"]["total"]
        assert n == r.results["h2load"]["requests"]["started"]
        assert n == r.results["h2load"]["requests"]["done"]
        assert n == r.results["h2load"]["requests"]["succeeded"]
        assert n == r.results["h2load"]["status"]["2xx"]
        assert 0 == r.results["h2load"]["status"]["3xx"]
        assert 0 == r.results["h2load"]["status"]["4xx"]
        assert 0 == r.results["h2load"]["status"]["5xx"]
    
    # test load on cgi script, single connection, different sizes
    @pytest.mark.parametrize("start", [
        1000, 80000
    ])
    def test_h2_700_10(self, env, start):
        assert env.is_live()
        text = "X"
        chunk = 32
        for n in range(0, 5):
            args = [env.h2load, "-n", "%d" % chunk, "-c", "1", "-m", "10",
                    f"--connect-to=localhost:{env.https_port}",
                    f"--base-uri={env.mkurl('https', 'cgi', '/')}",
            ]
            for i in range(0, chunk):
                args.append(env.mkurl("https", "cgi", ("/mnot164.py?count=%d&text=%s" % (start+(n*chunk)+i, text))))
            r = env.run(args)
            self.check_h2load_ok(env, r, chunk)

    # test load on cgi script, single connection
    @pytest.mark.parametrize("conns", [
        1, 2, 16, 32
    ])
    def test_h2_700_11(self, env, conns):
        assert env.is_live()
        text = "X"
        start = 1200
        chunk = 64
        for n in range(0, 5):
            args = [env.h2load, "-n", "%d" % chunk, "-c", "%d" % conns, "-m", "10",
                    f"--connect-to=localhost:{env.https_port}",
                    f"--base-uri={env.mkurl('https', 'cgi', '/')}",
            ]
            for i in range(0, chunk):
                args.append(env.mkurl("https", "cgi", ("/mnot164.py?count=%d&text=%s" % (start+(n*chunk)+i, text))))
            r = env.run(args)
            self.check_h2load_ok(env, r, chunk)
