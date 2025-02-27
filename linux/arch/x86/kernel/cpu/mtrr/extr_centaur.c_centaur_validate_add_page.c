
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int MTRR_TYPE_UNCACHABLE ;
 unsigned int MTRR_TYPE_WRCOMB ;
 scalar_t__ centaur_mcr_type ;
 int pr_warn (char*,char*) ;

__attribute__((used)) static int
centaur_validate_add_page(unsigned long base, unsigned long size, unsigned int type)
{



 if (type != MTRR_TYPE_WRCOMB &&
     (centaur_mcr_type == 0 || type != MTRR_TYPE_UNCACHABLE)) {
  pr_warn("mtrr: only write-combining%s supported\n",
      centaur_mcr_type ? " and uncacheable are" : " is");
  return -EINVAL;
 }
 return 0;
}
