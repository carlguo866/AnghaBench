
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int SSL ;


 scalar_t__ SSL_write (int *,char*,int) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char const*,char const*) ;
 size_t strlen (char*) ;
 int verb ;

__attribute__((used)) static int
write_ssl_line(SSL* ssl, const char* str, const char* sec)
{
 char buf[1024];
 size_t l;
 if(sec) {
  snprintf(buf, sizeof(buf), str, sec);
 } else {
  snprintf(buf, sizeof(buf), "%s", str);
 }
 l = strlen(buf);
 if(l+2 >= sizeof(buf)) {
  if(verb) printf("line too long\n");
  return 0;
 }
 if(verb >= 2) printf("SSL_write: %s\n", buf);
 buf[l] = '\r';
 buf[l+1] = '\n';
 buf[l+2] = 0;

 if(SSL_write(ssl, buf, (int)strlen(buf)) <= 0) {
  if(verb) printf("could not SSL_write %s", str);
  return 0;
 }
 return 1;
}
