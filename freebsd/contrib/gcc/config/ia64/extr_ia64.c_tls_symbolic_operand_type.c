
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum tls_model { ____Placeholder_tls_model } tls_model ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ SYMBOL_REF ;
 int SYMBOL_REF_TLS_MODEL (int ) ;
 int XEXP (int ,int ) ;

__attribute__((used)) static enum tls_model
tls_symbolic_operand_type (rtx addr)
{
  enum tls_model tls_kind = 0;

  if (GET_CODE (addr) == CONST)
    {
      if (GET_CODE (XEXP (addr, 0)) == PLUS
   && GET_CODE (XEXP (XEXP (addr, 0), 0)) == SYMBOL_REF)
        tls_kind = SYMBOL_REF_TLS_MODEL (XEXP (XEXP (addr, 0), 0));
    }
  else if (GET_CODE (addr) == SYMBOL_REF)
    tls_kind = SYMBOL_REF_TLS_MODEL (addr);

  return tls_kind;
}
