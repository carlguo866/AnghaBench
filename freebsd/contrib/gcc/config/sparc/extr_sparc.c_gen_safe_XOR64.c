
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int DImode ;
 int GEN_INT (int ) ;
 int gen_rtx_XOR (int ,int ,int ) ;

__attribute__((used)) static rtx
gen_safe_XOR64 (rtx src, HOST_WIDE_INT val)
{
  return gen_rtx_XOR (DImode, src, GEN_INT (val));
}
