
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scrub_bio {int work; struct bio* bio; int status; TYPE_1__* dev; } ;
struct btrfs_fs_info {int scrub_wr_completion_workers; } ;
struct bio {int bi_status; struct scrub_bio* bi_private; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_queue_work (int ,int *) ;
 int btrfs_scrubwrc_helper ;
 int scrub_wr_bio_end_io_worker ;

__attribute__((used)) static void scrub_wr_bio_end_io(struct bio *bio)
{
 struct scrub_bio *sbio = bio->bi_private;
 struct btrfs_fs_info *fs_info = sbio->dev->fs_info;

 sbio->status = bio->bi_status;
 sbio->bio = bio;

 btrfs_init_work(&sbio->work, btrfs_scrubwrc_helper,
    scrub_wr_bio_end_io_worker, ((void*)0), ((void*)0));
 btrfs_queue_work(fs_info->scrub_wr_completion_workers, &sbio->work);
}
