
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEV_FINISHED ;
 int test_bufferevent_impl (int,int ) ;

__attribute__((used)) static void test_bufferevent_pair_flush_finished(void) { test_bufferevent_impl(1, BEV_FINISHED); }
