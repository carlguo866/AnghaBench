
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int RTAS_UNKNOWN_SERVICE ;
 scalar_t__ rtas_busy_delay (int) ;
 int rtas_call (int,int,int,int*,int,int) ;
 int rtas_error_rc (int) ;
 int rtas_token (char*) ;

int rtas_set_power_level(int powerdomain, int level, int *setlevel)
{
 int token = rtas_token("set-power-level");
 int rc;

 if (token == RTAS_UNKNOWN_SERVICE)
  return -ENOENT;

 do {
  rc = rtas_call(token, 2, 2, setlevel, powerdomain, level);
 } while (rtas_busy_delay(rc));

 if (rc < 0)
  return rtas_error_rc(rc);
 return rc;
}
