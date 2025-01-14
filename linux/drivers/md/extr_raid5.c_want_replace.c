
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stripe_head {scalar_t__ sector; TYPE_3__* raid_conf; } ;
struct md_rdev {scalar_t__ recovery_offset; TYPE_1__* mddev; int flags; } ;
struct TYPE_6__ {TYPE_2__* disks; } ;
struct TYPE_5__ {int replacement; } ;
struct TYPE_4__ {scalar_t__ recovery_cp; } ;


 int Faulty ;
 int In_sync ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int want_replace(struct stripe_head *sh, int disk_idx)
{
 struct md_rdev *rdev;
 int rv = 0;

 rcu_read_lock();
 rdev = rcu_dereference(sh->raid_conf->disks[disk_idx].replacement);
 if (rdev
     && !test_bit(Faulty, &rdev->flags)
     && !test_bit(In_sync, &rdev->flags)
     && (rdev->recovery_offset <= sh->sector
  || rdev->mddev->recovery_cp <= sh->sector))
  rv = 1;
 rcu_read_unlock();
 return rv;
}
