
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int dummy; } ;
struct md_rdev {int dummy; } ;


 int ppl_modify_log (struct r5conf*,struct md_rdev*,int) ;
 scalar_t__ raid5_has_ppl (struct r5conf*) ;

__attribute__((used)) static inline int log_modify(struct r5conf *conf, struct md_rdev *rdev, bool add)
{
 if (raid5_has_ppl(conf))
  return ppl_modify_log(conf, rdev, add);

 return 0;
}
