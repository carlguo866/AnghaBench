
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curl_easy_cleanup (int ) ;
 int curl_global_cleanup () ;
 int easy ;

__attribute__((used)) static void unit_stop(void)
{
  curl_easy_cleanup(easy);
  curl_global_cleanup();
}
