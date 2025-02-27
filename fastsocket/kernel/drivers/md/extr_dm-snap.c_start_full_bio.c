
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int kcopyd_client; } ;
struct dm_snap_pending_exception {void* full_bio_private; int full_bio_end_io; struct bio* full_bio; struct dm_snapshot* snap; } ;
struct bio {void* bi_private; int bi_end_io; } ;


 int copy_callback ;
 void* dm_kcopyd_prepare_callback (int ,int ,struct dm_snap_pending_exception*) ;
 int full_bio_end_io ;
 int generic_make_request (struct bio*) ;

__attribute__((used)) static void start_full_bio(struct dm_snap_pending_exception *pe,
      struct bio *bio)
{
 struct dm_snapshot *s = pe->snap;
 void *callback_data;

 pe->full_bio = bio;
 pe->full_bio_end_io = bio->bi_end_io;
 pe->full_bio_private = bio->bi_private;

 callback_data = dm_kcopyd_prepare_callback(s->kcopyd_client,
         copy_callback, pe);

 bio->bi_end_io = full_bio_end_io;
 bio->bi_private = callback_data;

 generic_make_request(bio);
}
