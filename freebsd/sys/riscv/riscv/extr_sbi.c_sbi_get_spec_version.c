
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbi_ret {int dummy; } ;


 int SBI_BASE_GET_SPEC_VERSION ;
 struct sbi_ret SBI_CALL0 (int ,int ) ;
 int SBI_EXT_ID_BASE ;

__attribute__((used)) static struct sbi_ret
sbi_get_spec_version(void)
{
 return (SBI_CALL0(SBI_EXT_ID_BASE, SBI_BASE_GET_SPEC_VERSION));
}
