
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u16 ;
struct niu {int flags; } ;


 int BMAC_ALT_ADDR0 (int) ;
 int BMAC_ALT_ADDR1 (int) ;
 int BMAC_ALT_ADDR2 (int) ;
 int EINVAL ;
 int NIU_FLAGS_XMAC ;
 int XMAC_ALT_ADDR0 (int) ;
 int XMAC_ALT_ADDR1 (int) ;
 int XMAC_ALT_ADDR2 (int) ;
 int niu_num_alt_addr (struct niu*) ;
 int nw64_mac (int ,unsigned char) ;

__attribute__((used)) static int niu_set_alt_mac(struct niu *np, int index, unsigned char *addr)
{
 u16 reg0 = addr[4] << 8 | addr[5];
 u16 reg1 = addr[2] << 8 | addr[3];
 u16 reg2 = addr[0] << 8 | addr[1];

 if (index >= niu_num_alt_addr(np))
  return -EINVAL;

 if (np->flags & NIU_FLAGS_XMAC) {
  nw64_mac(XMAC_ALT_ADDR0(index), reg0);
  nw64_mac(XMAC_ALT_ADDR1(index), reg1);
  nw64_mac(XMAC_ALT_ADDR2(index), reg2);
 } else {
  nw64_mac(BMAC_ALT_ADDR0(index), reg0);
  nw64_mac(BMAC_ALT_ADDR1(index), reg1);
  nw64_mac(BMAC_ALT_ADDR2(index), reg2);
 }

 return 0;
}
