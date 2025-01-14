
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int urle_user_name ;
typedef int urle_password ;


 scalar_t__ rc_url_encode (char*,int,char const*) ;
 int snprintf (char*,size_t,char*,char*,char*) ;

int rc_url_login_with_password(char* buffer, size_t size, const char* user_name, const char* password) {
  char urle_user_name[64];
  char urle_password[64];
  int written;

  if (rc_url_encode(urle_user_name, sizeof(urle_user_name), user_name) != 0) {
    return -1;
  }

  if (rc_url_encode(urle_password, sizeof(urle_password), password) != 0) {
    return -1;
  }

  written = snprintf(
    buffer,
    size,
    "http://retroachievements.org/dorequest.php?r=login&u=%s&p=%s",
    urle_user_name,
    urle_password
  );

  return (size_t)written >= size ? -1 : 0;
}
