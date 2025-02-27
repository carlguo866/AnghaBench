
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RDP_CPU_READ ;
 int RDP_CPU_READWRITE_MODE_CURRENT ;
 int send_rdp (char*,int ,int ,int,int*) ;
 int store_signed_integer (char*,int,int) ;

__attribute__((used)) static void
rdp_fetch_one_register (int mask, char *buf)
{
  int val;
  send_rdp ("bbw-SWZ", RDP_CPU_READ, RDP_CPU_READWRITE_MODE_CURRENT, mask, &val);
  store_signed_integer (buf, 4, val);
}
