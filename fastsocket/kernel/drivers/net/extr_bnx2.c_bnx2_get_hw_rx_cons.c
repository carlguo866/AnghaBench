
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2_napi {int* hw_rx_cons_ptr; } ;


 int BNX2_MAX_RX_DESC_CNT ;
 int barrier () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u16
bnx2_get_hw_rx_cons(struct bnx2_napi *bnapi)
{
 u16 cons;


 barrier();
 cons = *bnapi->hw_rx_cons_ptr;
 barrier();
 if (unlikely((cons & BNX2_MAX_RX_DESC_CNT) == BNX2_MAX_RX_DESC_CNT))
  cons++;
 return cons;
}
