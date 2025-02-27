
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ user_count; scalar_t__ delta_user_count; } ;
struct objagg_obj_stats_info {scalar_t__ is_root; TYPE_2__ stats; } ;
struct TYPE_3__ {scalar_t__ user_count; scalar_t__ delta_user_count; } ;
struct expect_stats_info {scalar_t__ is_root; TYPE_1__ stats; } ;


 int EINVAL ;

__attribute__((used)) static int
check_expect_stats_nums(const struct objagg_obj_stats_info *stats_info,
   const struct expect_stats_info *expect_stats_info,
   const char **errmsg)
{
 if (stats_info->is_root != expect_stats_info->is_root) {
  if (errmsg)
   *errmsg = "Incorrect root/delta indication";
  return -EINVAL;
 }
 if (stats_info->stats.user_count !=
     expect_stats_info->stats.user_count) {
  if (errmsg)
   *errmsg = "Incorrect user count";
  return -EINVAL;
 }
 if (stats_info->stats.delta_user_count !=
     expect_stats_info->stats.delta_user_count) {
  if (errmsg)
   *errmsg = "Incorrect delta user count";
  return -EINVAL;
 }
 return 0;
}
