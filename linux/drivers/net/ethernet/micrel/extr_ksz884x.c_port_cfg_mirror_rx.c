
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {int dummy; } ;


 int KS8842_PORT_CTRL_2_OFFSET ;
 int PORT_MIRROR_RX ;
 int port_cfg (struct ksz_hw*,int,int ,int ,int) ;

__attribute__((used)) static inline void port_cfg_mirror_rx(struct ksz_hw *hw, int p, int set)
{
 port_cfg(hw, p,
  KS8842_PORT_CTRL_2_OFFSET, PORT_MIRROR_RX, set);
}
