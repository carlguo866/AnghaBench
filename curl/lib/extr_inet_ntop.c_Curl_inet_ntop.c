
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAFNOSUPPORT ;
 int errno ;
 char* inet_ntop4 (unsigned char const*,char*,size_t) ;
 char* inet_ntop6 (unsigned char const*,char*,size_t) ;

char *Curl_inet_ntop(int af, const void *src, char *buf, size_t size)
{
  switch(af) {
  case 129:
    return inet_ntop4((const unsigned char *)src, buf, size);




  default:
    errno = EAFNOSUPPORT;
    return ((void*)0);
  }
}
