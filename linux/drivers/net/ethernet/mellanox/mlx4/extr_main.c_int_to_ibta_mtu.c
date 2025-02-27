
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IB_MTU_1024 ;
 int IB_MTU_2048 ;
 int IB_MTU_256 ;
 int IB_MTU_4096 ;
 int IB_MTU_512 ;

__attribute__((used)) static inline int int_to_ibta_mtu(int mtu)
{
 switch (mtu) {
 case 256: return IB_MTU_256;
 case 512: return IB_MTU_512;
 case 1024: return IB_MTU_1024;
 case 2048: return IB_MTU_2048;
 case 4096: return IB_MTU_4096;
 default: return -1;
 }
}
