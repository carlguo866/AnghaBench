
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int qla_host_t ;


 int Q81_CTL_PROC_ADDR_REG_BLOCK ;
 int Q81_FUNCTION_SHIFT ;
 int Q81_INVALID_NUM ;
 int qls_get_other_fnum (int *) ;
 int qls_wr_mpi_reg (int *,int,int) ;

__attribute__((used)) static void
qls_wr_ofunc_reg(qla_host_t *ha, uint32_t reg, uint32_t value)
{
 uint32_t ofunc;
 int ret = 0;

 ofunc = qls_get_other_fnum(ha);

 if (ofunc == Q81_INVALID_NUM)
  return;

 reg = Q81_CTL_PROC_ADDR_REG_BLOCK | (ofunc << Q81_FUNCTION_SHIFT) | reg;

 ret = qls_wr_mpi_reg(ha, reg, value);

 return;
}
