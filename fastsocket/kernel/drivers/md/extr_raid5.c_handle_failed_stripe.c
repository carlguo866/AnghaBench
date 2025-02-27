
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stripe_head_state {int dummy; } ;
struct stripe_head {int state; TYPE_2__* dev; int sector; int stripe_lock; } ;
struct r5conf {TYPE_3__* mddev; int pending_full_writes; int wait_for_overlap; TYPE_1__* disks; } ;
struct md_rdev {int nr_pending; int flags; } ;
struct bio {scalar_t__ bi_sector; struct bio* bi_next; int bi_flags; } ;
struct TYPE_8__ {int thread; int bitmap; } ;
struct TYPE_7__ {scalar_t__ sector; int flags; struct bio* toread; struct bio* written; struct bio* towrite; } ;
struct TYPE_6__ {int rdev; } ;


 int BIO_UPTODATE ;
 int In_sync ;
 int R5_Insync ;
 int R5_LOCKED ;
 int R5_Overlap ;
 int R5_ReadError ;
 int R5_Wantfill ;
 int STRIPE_FULL_WRITE ;
 scalar_t__ STRIPE_SECTORS ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int bitmap_endwrite (int ,int ,scalar_t__,int ,int ) ;
 int clear_bit (int ,int *) ;
 int md_error (TYPE_3__*,struct md_rdev*) ;
 int md_wakeup_thread (int ) ;
 int md_write_end (TYPE_3__*) ;
 struct bio* r5_next_bio (struct bio*,scalar_t__) ;
 int raid5_dec_bi_active_stripes (struct bio*) ;
 struct md_rdev* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rdev_dec_pending (struct md_rdev*,TYPE_3__*) ;
 int rdev_set_badblocks (struct md_rdev*,int ,scalar_t__,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void
handle_failed_stripe(struct r5conf *conf, struct stripe_head *sh,
    struct stripe_head_state *s, int disks,
    struct bio **return_bi)
{
 int i;
 for (i = disks; i--; ) {
  struct bio *bi;
  int bitmap_end = 0;

  if (test_bit(R5_ReadError, &sh->dev[i].flags)) {
   struct md_rdev *rdev;
   rcu_read_lock();
   rdev = rcu_dereference(conf->disks[i].rdev);
   if (rdev && test_bit(In_sync, &rdev->flags))
    atomic_inc(&rdev->nr_pending);
   else
    rdev = ((void*)0);
   rcu_read_unlock();
   if (rdev) {
    if (!rdev_set_badblocks(
         rdev,
         sh->sector,
         STRIPE_SECTORS, 0))
     md_error(conf->mddev, rdev);
    rdev_dec_pending(rdev, conf->mddev);
   }
  }
  spin_lock_irq(&sh->stripe_lock);

  bi = sh->dev[i].towrite;
  sh->dev[i].towrite = ((void*)0);
  spin_unlock_irq(&sh->stripe_lock);
  if (bi)
   bitmap_end = 1;

  if (test_and_clear_bit(R5_Overlap, &sh->dev[i].flags))
   wake_up(&conf->wait_for_overlap);

  while (bi && bi->bi_sector <
   sh->dev[i].sector + STRIPE_SECTORS) {
   struct bio *nextbi = r5_next_bio(bi, sh->dev[i].sector);
   clear_bit(BIO_UPTODATE, &bi->bi_flags);
   if (!raid5_dec_bi_active_stripes(bi)) {
    md_write_end(conf->mddev);
    bi->bi_next = *return_bi;
    *return_bi = bi;
   }
   bi = nextbi;
  }
  if (bitmap_end)
   bitmap_endwrite(conf->mddev->bitmap, sh->sector,
    STRIPE_SECTORS, 0, 0);
  bitmap_end = 0;

  bi = sh->dev[i].written;
  sh->dev[i].written = ((void*)0);
  if (bi) bitmap_end = 1;
  while (bi && bi->bi_sector <
         sh->dev[i].sector + STRIPE_SECTORS) {
   struct bio *bi2 = r5_next_bio(bi, sh->dev[i].sector);
   clear_bit(BIO_UPTODATE, &bi->bi_flags);
   if (!raid5_dec_bi_active_stripes(bi)) {
    md_write_end(conf->mddev);
    bi->bi_next = *return_bi;
    *return_bi = bi;
   }
   bi = bi2;
  }




  if (!test_bit(R5_Wantfill, &sh->dev[i].flags) &&
      (!test_bit(R5_Insync, &sh->dev[i].flags) ||
        test_bit(R5_ReadError, &sh->dev[i].flags))) {
   spin_lock_irq(&sh->stripe_lock);
   bi = sh->dev[i].toread;
   sh->dev[i].toread = ((void*)0);
   spin_unlock_irq(&sh->stripe_lock);
   if (test_and_clear_bit(R5_Overlap, &sh->dev[i].flags))
    wake_up(&conf->wait_for_overlap);
   while (bi && bi->bi_sector <
          sh->dev[i].sector + STRIPE_SECTORS) {
    struct bio *nextbi =
     r5_next_bio(bi, sh->dev[i].sector);
    clear_bit(BIO_UPTODATE, &bi->bi_flags);
    if (!raid5_dec_bi_active_stripes(bi)) {
     bi->bi_next = *return_bi;
     *return_bi = bi;
    }
    bi = nextbi;
   }
  }
  if (bitmap_end)
   bitmap_endwrite(conf->mddev->bitmap, sh->sector,
     STRIPE_SECTORS, 0, 0);



  clear_bit(R5_LOCKED, &sh->dev[i].flags);
 }

 if (test_and_clear_bit(STRIPE_FULL_WRITE, &sh->state))
  if (atomic_dec_and_test(&conf->pending_full_writes))
   md_wakeup_thread(conf->mddev->thread);
}
