
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int http_lingering_close_test_impl (void*,int) ;

__attribute__((used)) static void http_lingering_close_test(void *arg)
{ http_lingering_close_test_impl(arg, 1); }
