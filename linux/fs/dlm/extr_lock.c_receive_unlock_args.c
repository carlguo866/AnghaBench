
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int ENOMEM ;
 scalar_t__ receive_lvb (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ;

__attribute__((used)) static int receive_unlock_args(struct dlm_ls *ls, struct dlm_lkb *lkb,
          struct dlm_message *ms)
{
 if (receive_lvb(ls, lkb, ms))
  return -ENOMEM;
 return 0;
}
