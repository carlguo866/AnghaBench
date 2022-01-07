
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;



__attribute__((used)) static int
bid_keycmp(const char *p, const char *key, ssize_t len)
{
 int match_len = 0;

 while (len > 0 && *p && *key) {
  if (*p == *key) {
   --len;
   ++p;
   ++key;
   ++match_len;
   continue;
  }
  return (0);
 }
 if (*key != '\0')
  return (0);


 if (p[0] == '=' || p[0] == ' ' || p[0] == '\t' ||
     p[0] == '\n' || p[0] == '\r' ||
    (p[0] == '\\' && (p[1] == '\n' || p[1] == '\r')))
  return (match_len);
 return (0);
}
