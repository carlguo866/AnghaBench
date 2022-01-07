
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AF_INET ;
 int ENOTSUP ;
 int errno ;
 int sscanf (char const*,char*,int *,int *,int *,int *) ;

int inet_pton(int af, const char *src, void *dst) {
  uint32_t a0, a1, a2, a3;
  uint8_t *db = (uint8_t *) dst;
  if (af != AF_INET) {
    errno = ENOTSUP;
    return 0;
  }
  if (sscanf(src, "%lu.%lu.%lu.%lu", &a0, &a1, &a2, &a3) != 4) {
    return 0;
  }
  *db = a3;
  *(db + 1) = a2;
  *(db + 2) = a1;
  *(db + 3) = a0;
  return 1;
}
