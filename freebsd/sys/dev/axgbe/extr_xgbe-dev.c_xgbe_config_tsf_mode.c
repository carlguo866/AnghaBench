
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {unsigned int tx_q_count; } ;


 int MTL_Q_TQOMR ;
 int TSF ;
 int XGMAC_MTL_IOWRITE_BITS (struct xgbe_prv_data*,unsigned int,int ,int ,unsigned int) ;

__attribute__((used)) static int xgbe_config_tsf_mode(struct xgbe_prv_data *pdata, unsigned int val)
{
 unsigned int i;

 for (i = 0; i < pdata->tx_q_count; i++)
  XGMAC_MTL_IOWRITE_BITS(pdata, i, MTL_Q_TQOMR, TSF, val);

 return 0;
}
