
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_rate_new (long long,int,int) ;

__attribute__((used)) static int set_rate2 (long long item_id, int rate2) {
  return set_rate_new (item_id, 1, rate2);
}
