
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int REFCOUNT_INIT (int ) ;
 int REFCOUNT_MAX ;
 int overflow_check (int *) ;
 int pr_info (char*) ;
 int pr_warn (char*) ;
 int refcount_add_not_zero (int,int *) ;

void lkdtm_REFCOUNT_ADD_NOT_ZERO_OVERFLOW(void)
{
 refcount_t over = REFCOUNT_INIT(REFCOUNT_MAX);

 pr_info("attempting bad refcount_add_not_zero() overflow\n");
 if (!refcount_add_not_zero(6, &over))
  pr_warn("Weird: refcount_add_not_zero() reported zero\n");

 overflow_check(&over);
}
