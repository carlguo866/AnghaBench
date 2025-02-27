
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int BYS_MSG (struct connection*) ;
 int INIT ;
 int MAX_VALUE_LEN ;
 int RETURN (int ,int) ;
 scalar_t__ STATS_BUFF_SIZE ;
 int bayes_is_spam (int ,int) ;
 int bayes_is_spam_debug (int ,int,char*) ;
 double bayes_is_spam_prob (int ,int) ;
 int bayes_prepare_stats () ;
 int black_list_get (char*,int ) ;
 char* buf ;
 int do_bayes_reset_ham (int ,int) ;
 int do_bayes_reset_spam (int ,int) ;
 int do_bayes_set_ham (int ,int) ;
 int do_bayes_set_spam (int ,int) ;
 int do_bayes_unset_ham (int ,int) ;
 int do_bayes_unset_spam (int ,int) ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,char const*,int) ;
 int get ;
 int prepare_stats (struct connection*,char*,scalar_t__) ;
 int return_one_key (struct connection*,char const*,char*,int) ;
 int sprintf (char*,char*,double) ;
 int sscanf (char*,char*,int*) ;
 char* stats_buff ;
 int stderr ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int verbosity ;

int memcache_try_get (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    fprintf (stderr, "memcache_get: key='%s', key_len=%d\n", old_key, old_key_len);
  }

  char *key;
  int key_len;

  eat_at (old_key, old_key_len, &key, &key_len);

  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    int len = bayes_prepare_stats ();
    int len2 = prepare_stats (c, stats_buff + len, STATS_BUFF_SIZE - len);
    return_one_key (c, old_key, stats_buff, len + len2 - 1);

    return 0;
  }

  if (key_len >= 8 && !strncmp (key, "set_spam", 8)) {
    int random_tag;
    if (sscanf (key, "set_spam%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    do_bayes_set_spam (BYS_MSG (c), random_tag);

    RETURN(get, 0);
  }

  if (key_len >= 7 && !strncmp (key, "set_ham", 7)) {
    int random_tag;
    if (sscanf (key, "set_ham%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    do_bayes_set_ham (BYS_MSG (c), random_tag);

    RETURN(get, 0);
  }

  if (key_len >= 10 && !strncmp (key, "unset_spam", 10)) {
    int random_tag;
    if (sscanf (key, "unset_spam%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    do_bayes_unset_spam (BYS_MSG (c), random_tag);

    RETURN(get, 0);
  }

  if (key_len >= 9 && !strncmp (key, "unset_ham", 9)) {
    int random_tag;
    if (sscanf (key, "unset_ham%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    do_bayes_unset_ham (BYS_MSG (c), random_tag);

    RETURN(get, 0);
  }

  if (key_len >= 10 && !strncmp (key, "reset_spam", 10)) {
    int random_tag;
    if (sscanf (key, "reset_spam%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    do_bayes_reset_spam (BYS_MSG (c), random_tag);

    RETURN(get, 0);
  }

  if (key_len >= 9 && !strncmp (key, "reset_ham", 9)) {
    int random_tag;
    if (sscanf (key, "reset_ham%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    do_bayes_reset_ham (BYS_MSG (c), random_tag);

    RETURN(get, 0);
  }

  if (key_len >= 9 && !strncmp (key, "test_debug", 10)) {
    int random_tag;
    if (sscanf (key, "test_debug%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    bayes_is_spam_debug (BYS_MSG (c), random_tag, buf);

    return_one_key (c, old_key, buf, strlen (buf));

    RETURN(get, 0);
  }

  if (key_len >= 9 && !strncmp (key, "test_prob", 9)) {
    int random_tag;
    if (sscanf (key, "test_prob%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    double res = bayes_is_spam_prob (BYS_MSG (c), random_tag);

    if (res >= -1e-9) {
      sprintf (buf, "%.6lf", res);
      return_one_key (c, old_key, buf, strlen (buf));

      RETURN(get, 0);
    }

    int result = (int)res;
    RETURN(get, result);
  }

  if (key_len >= 4 && !strncmp (key, "test", 4)) {
    int random_tag;
    if (sscanf (key, "test%d", &random_tag) != 1) {
      RETURN(get, 0);
    }

    int res = bayes_is_spam (BYS_MSG (c), random_tag);

    if (res >= 0) {
      return_one_key (c, old_key, res ? "spam" : "ham", res ? 4 : 3);

      RETURN(get, 0);
    }

    RETURN(get, res);
  }

  if (key_len >= 10 && !strncmp (key, "black_list", 10)) {
    int res = black_list_get (buf, MAX_VALUE_LEN);

    if (res >= 0) {
      return_one_key (c, old_key, buf, strlen (buf));
    }

    RETURN(get, 0);
  }

  RETURN(get, 0);
}
