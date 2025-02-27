
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int data_len; char* data; } ;
struct connection {int Out; int flags; } ;


 int C_INTIMEOUT ;
 int DELAY_INFINITY ;
 int assert (int) ;
 int binlog_disabled ;
 int cmd_decr ;
 int cmd_incr ;
 struct data do_pmemcached_get (char const*,int) ;
 int do_pmemcached_incr (int,char const*,int,long long) ;
 int do_pmemcached_preload (char const*,int,int) ;
 int do_pmemcached_store (int ,char const*,int,int ,int ,char*,int ) ;
 int fprintf (int ,char*,int,...) ;
 int mct_add ;
 int memcache_wait (struct connection*) ;
 scalar_t__ protected_mode ;
 int sprintf (char*,char*,long long) ;
 int stderr ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int memcache_incr (struct connection *c, int op, const char *key, int key_len, long long arg) {
  if (binlog_disabled == 1) {
    return 0;
  }
  if (protected_mode) {
    return 0;
  }
  c->flags &= ~C_INTIMEOUT;
  if (verbosity >= 3) {
    fprintf (stderr, "memcache_incr: op=%d, key='%s', val=%lld\n", op, key, arg);
  }
  if (op == 1) {
    cmd_decr++;
  } else {
    cmd_incr++;
  }

  int force_create = 0;
  if (key_len >= 3 && !strncmp (key, "###", 3)) {
    force_create = 1;
    key += 3;
    key_len -= 3;
  }
  int x = do_pmemcached_preload (key, key_len, 1);
  if (x == -2) {
    if (!memcache_wait (c)) {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
    }
    return 0;
  }

  if (x == 0 && force_create) {
    static char a[30];
    if (op) {
      arg = -arg;
    }
    sprintf (a, "%lld", arg);
    assert (do_pmemcached_store (mct_add, key, key_len, 0, DELAY_INFINITY, a, strlen (a)) != -2);
  } else {

    x = do_pmemcached_incr(op, key, key_len, arg);
    if (verbosity >= 4) { fprintf (stderr, "do_pmemcached_incr returns %d\n", x); }
    assert (x != -2);

    if (x == -1) {
      write_out (&c->Out, "NOT_FOUND\r\n", 11);
      return 0;
    }
  }

  struct data y = do_pmemcached_get (key, key_len);

  if (verbosity >= 4) { fprintf (stderr, "y.data_len = %d\n", y.data_len); }

  if (y.data_len == -2) {
    return memcache_wait (c);
  }

  if (y.data_len == -1) {
    write_out (&c->Out, "NOT_FOUND\r\n", 11);
  } else {
    write_out (&c->Out, y.data, y.data_len);
    write_out (&c->Out, "\r\n", 2);
  }

  return 0;
}
