
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_pin {int dummy; } ;


 int CEC_ERROR_INJ_TX_CUSTOM_BIT_ARG_IDX ;
 int CEC_ERROR_INJ_TX_CUSTOM_BIT_OFFSET ;
 int tx_error_inj (struct cec_pin*,int ,int ,int *) ;

__attribute__((used)) static bool tx_custom_bit(struct cec_pin *pin)
{
 return tx_error_inj(pin, CEC_ERROR_INJ_TX_CUSTOM_BIT_OFFSET,
       CEC_ERROR_INJ_TX_CUSTOM_BIT_ARG_IDX, ((void*)0));
}
