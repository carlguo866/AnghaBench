
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct petp {int dummy; } ;


 int F_IP_CSUM ;
 int set_csum_offload (struct petp*,int ,int) ;

void t1_tp_set_ip_checksum_offload(struct petp *tp, int enable)
{
 set_csum_offload(tp, F_IP_CSUM, enable);
}
