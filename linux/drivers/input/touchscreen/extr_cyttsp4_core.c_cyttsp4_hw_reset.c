
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyttsp4 {int dummy; } ;


 int ENOSYS ;
 int cyttsp4_hw_hard_reset (struct cyttsp4*) ;
 int cyttsp4_hw_soft_reset (struct cyttsp4*) ;

__attribute__((used)) static int cyttsp4_hw_reset(struct cyttsp4 *cd)
{
 int rc = cyttsp4_hw_hard_reset(cd);
 if (rc == -ENOSYS)
  rc = cyttsp4_hw_soft_reset(cd);
 return rc;
}
