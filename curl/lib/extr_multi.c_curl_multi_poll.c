
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_waitfd {int dummy; } ;
struct Curl_multi {int dummy; } ;
typedef int CURLMcode ;


 int Curl_multi_wait (struct Curl_multi*,struct curl_waitfd*,unsigned int,int,int*,int ) ;
 int TRUE ;

CURLMcode curl_multi_poll(struct Curl_multi *multi,
                          struct curl_waitfd extra_fds[],
                          unsigned int extra_nfds,
                          int timeout_ms,
                          int *ret)
{
  return Curl_multi_wait(multi, extra_fds, extra_nfds, timeout_ms, ret, TRUE);
}
