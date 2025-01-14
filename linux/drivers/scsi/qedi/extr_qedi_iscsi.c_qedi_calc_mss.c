
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;


 scalar_t__ DEF_MSS ;
 scalar_t__ IPV4_HDR_LEN ;
 scalar_t__ IPV6_HDR_LEN ;
 scalar_t__ TCP_HDR_LEN ;

__attribute__((used)) static u16 qedi_calc_mss(u16 pmtu, u8 is_ipv6, u8 tcp_ts_en, u8 vlan_en)
{
 u16 mss = 0;
 u16 hdrs = TCP_HDR_LEN;

 if (is_ipv6)
  hdrs += IPV6_HDR_LEN;
 else
  hdrs += IPV4_HDR_LEN;

 mss = pmtu - hdrs;

 if (!mss)
  mss = DEF_MSS;

 return mss;
}
