
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_retstack_pop (int *,int *) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result pop_null(void)
{
 int status;

 status = pt_retstack_pop(((void*)0), ((void*)0));
 ptu_int_eq(status, -pte_invalid);

 return ptu_passed();
}
