
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ sb_lkid; scalar_t__ sb_lvbptr; } ;
struct gfs2_glock {int gl_flags; TYPE_1__ gl_lksb; } ;


 int BUG () ;
 int DLM_LKF_ALTCW ;
 int DLM_LKF_ALTPR ;
 int DLM_LKF_CONVERT ;
 int DLM_LKF_HEADQUE ;
 int DLM_LKF_NOORDER ;
 int DLM_LKF_NOQUEUE ;
 int DLM_LKF_NOQUEUEBAST ;
 int DLM_LKF_QUECVT ;
 int DLM_LKF_VALBLK ;
 int const DLM_LOCK_CW ;
 int const DLM_LOCK_PR ;
 int GLF_BLOCKING ;
 unsigned int const LM_FLAG_ANY ;
 unsigned int const LM_FLAG_PRIORITY ;
 unsigned int const LM_FLAG_TRY ;
 unsigned int const LM_FLAG_TRY_1CB ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 make_flags(struct gfs2_glock *gl, const unsigned int gfs_flags,
        const int req)
{
 u32 lkf = 0;

 if (gl->gl_lksb.sb_lvbptr)
  lkf |= DLM_LKF_VALBLK;

 if (gfs_flags & LM_FLAG_TRY)
  lkf |= DLM_LKF_NOQUEUE;

 if (gfs_flags & LM_FLAG_TRY_1CB) {
  lkf |= DLM_LKF_NOQUEUE;
  lkf |= DLM_LKF_NOQUEUEBAST;
 }

 if (gfs_flags & LM_FLAG_PRIORITY) {
  lkf |= DLM_LKF_NOORDER;
  lkf |= DLM_LKF_HEADQUE;
 }

 if (gfs_flags & LM_FLAG_ANY) {
  if (req == DLM_LOCK_PR)
   lkf |= DLM_LKF_ALTCW;
  else if (req == DLM_LOCK_CW)
   lkf |= DLM_LKF_ALTPR;
  else
   BUG();
 }

 if (gl->gl_lksb.sb_lkid != 0) {
  lkf |= DLM_LKF_CONVERT;
  if (test_bit(GLF_BLOCKING, &gl->gl_flags))
   lkf |= DLM_LKF_QUECVT;
 }

 return lkf;
}
