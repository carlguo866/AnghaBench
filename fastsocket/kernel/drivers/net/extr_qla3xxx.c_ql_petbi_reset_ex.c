
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {size_t mac_index; } ;


 int PETBI_CONTROL_REG ;
 int PETBI_CTRL_SOFT_RESET ;
 int * PHYAddr ;
 int ql_mii_write_reg_ex (struct ql3_adapter*,int ,int ,int ) ;

__attribute__((used)) static void ql_petbi_reset_ex(struct ql3_adapter *qdev)
{
 ql_mii_write_reg_ex(qdev, PETBI_CONTROL_REG, PETBI_CTRL_SOFT_RESET,
       PHYAddr[qdev->mac_index]);
}
