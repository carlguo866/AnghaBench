
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UDItype ;
typedef int DFtype ;


 int A ;
 int DI_BITS ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_HANDLE_EXCEPTIONS ;
 int FP_TO_INT_D (int ,int ,int ,int ) ;
 int FP_UNPACK_RAW_D (int ,int ) ;

UDItype __fixunsdfdi(DFtype a)
{
  FP_DECL_EX;
  FP_DECL_D(A);
  UDItype r;

  FP_UNPACK_RAW_D(A, a);
  FP_TO_INT_D(r, A, DI_BITS, 0);
  FP_HANDLE_EXCEPTIONS;

  return r;
}
