
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_qgroup {scalar_t__ old_refcnt; } ;



__attribute__((used)) static inline u64 btrfs_qgroup_get_old_refcnt(struct btrfs_qgroup *qg, u64 seq)
{
 if (qg->old_refcnt < seq)
  return 0;
 return qg->old_refcnt - seq;
}
