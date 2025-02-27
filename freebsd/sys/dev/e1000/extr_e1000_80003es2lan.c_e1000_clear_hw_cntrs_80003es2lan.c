
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int E1000_ALGNERRC ;
 int E1000_CEXTERR ;
 int E1000_IAC ;
 int E1000_ICRXATC ;
 int E1000_ICRXDMTC ;
 int E1000_ICRXOC ;
 int E1000_ICRXPTC ;
 int E1000_ICTXATC ;
 int E1000_ICTXPTC ;
 int E1000_ICTXQEC ;
 int E1000_ICTXQMTC ;
 int E1000_MGTPDC ;
 int E1000_MGTPRC ;
 int E1000_MGTPTC ;
 int E1000_PRC1023 ;
 int E1000_PRC127 ;
 int E1000_PRC1522 ;
 int E1000_PRC255 ;
 int E1000_PRC511 ;
 int E1000_PRC64 ;
 int E1000_PTC1023 ;
 int E1000_PTC127 ;
 int E1000_PTC1522 ;
 int E1000_PTC255 ;
 int E1000_PTC511 ;
 int E1000_PTC64 ;
 int E1000_READ_REG (struct e1000_hw*,int ) ;
 int E1000_RXERRC ;
 int E1000_TNCRS ;
 int E1000_TSCTC ;
 int E1000_TSCTFC ;
 int e1000_clear_hw_cntrs_base_generic (struct e1000_hw*) ;

__attribute__((used)) static void e1000_clear_hw_cntrs_80003es2lan(struct e1000_hw *hw)
{
 DEBUGFUNC("e1000_clear_hw_cntrs_80003es2lan");

 e1000_clear_hw_cntrs_base_generic(hw);

 E1000_READ_REG(hw, E1000_PRC64);
 E1000_READ_REG(hw, E1000_PRC127);
 E1000_READ_REG(hw, E1000_PRC255);
 E1000_READ_REG(hw, E1000_PRC511);
 E1000_READ_REG(hw, E1000_PRC1023);
 E1000_READ_REG(hw, E1000_PRC1522);
 E1000_READ_REG(hw, E1000_PTC64);
 E1000_READ_REG(hw, E1000_PTC127);
 E1000_READ_REG(hw, E1000_PTC255);
 E1000_READ_REG(hw, E1000_PTC511);
 E1000_READ_REG(hw, E1000_PTC1023);
 E1000_READ_REG(hw, E1000_PTC1522);

 E1000_READ_REG(hw, E1000_ALGNERRC);
 E1000_READ_REG(hw, E1000_RXERRC);
 E1000_READ_REG(hw, E1000_TNCRS);
 E1000_READ_REG(hw, E1000_CEXTERR);
 E1000_READ_REG(hw, E1000_TSCTC);
 E1000_READ_REG(hw, E1000_TSCTFC);

 E1000_READ_REG(hw, E1000_MGTPRC);
 E1000_READ_REG(hw, E1000_MGTPDC);
 E1000_READ_REG(hw, E1000_MGTPTC);

 E1000_READ_REG(hw, E1000_IAC);
 E1000_READ_REG(hw, E1000_ICRXOC);

 E1000_READ_REG(hw, E1000_ICRXPTC);
 E1000_READ_REG(hw, E1000_ICRXATC);
 E1000_READ_REG(hw, E1000_ICTXPTC);
 E1000_READ_REG(hw, E1000_ICTXATC);
 E1000_READ_REG(hw, E1000_ICTXQEC);
 E1000_READ_REG(hw, E1000_ICTXQMTC);
 E1000_READ_REG(hw, E1000_ICRXDMTC);
}
