
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_asid {int cr3; int vmcs; } ;


 int pt_asid_init (struct pt_asid*) ;
 int pt_asid_match (struct pt_asid*,struct pt_asid*) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result match(void)
{
 struct pt_asid lhs, rhs;
 int errcode;

 pt_asid_init(&lhs);
 pt_asid_init(&rhs);

 lhs.cr3 = 0x2300ull;
 rhs.cr3 = 0x2300ull;
 lhs.vmcs = 0x23000ull;
 rhs.vmcs = 0x23000ull;

 errcode = pt_asid_match(&lhs, &rhs);
 ptu_int_eq(errcode, 1);

 return ptu_passed();
}
