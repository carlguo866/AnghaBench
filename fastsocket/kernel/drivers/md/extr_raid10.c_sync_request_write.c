
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct r10conf {int copies; TYPE_5__* mirrors; } ;
struct r10bio {int sectors; int remaining; TYPE_3__* devs; } ;
struct mddev {int recovery; int resync_mismatches; struct r10conf* private; } ;
struct bio {int bi_flags; scalar_t__ bi_end_io; int bi_vcnt; int bi_size; TYPE_2__* bi_io_vec; int bi_bdev; int bi_sector; struct r10bio* bi_private; int bi_rw; int * bi_next; scalar_t__ bi_phys_segments; scalar_t__ bi_idx; } ;
struct TYPE_10__ {TYPE_1__* replacement; TYPE_4__* rdev; } ;
struct TYPE_9__ {int bdev; scalar_t__ data_offset; int nr_pending; } ;
struct TYPE_8__ {int devnum; struct bio* bio; struct bio* repl_bio; int addr; } ;
struct TYPE_7__ {int bv_len; int bv_page; scalar_t__ bv_offset; } ;
struct TYPE_6__ {int bdev; } ;


 int BIO_POOL_MASK ;
 int BIO_UPTODATE ;
 int MD_RECOVERY_CHECK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int WRITE ;
 int atomic64_add (int,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int bio_sectors (struct bio*) ;
 scalar_t__ end_sync_read ;
 scalar_t__ end_sync_write ;
 int generic_make_request (struct bio*) ;
 int md_done_sync (struct mddev*,int,int) ;
 int md_sync_acct (int ,int ) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int page_address (int ) ;
 int put_buf (struct r10bio*) ;
 scalar_t__ test_bit (int,int*) ;

__attribute__((used)) static void sync_request_write(struct mddev *mddev, struct r10bio *r10_bio)
{
 struct r10conf *conf = mddev->private;
 int i, first;
 struct bio *tbio, *fbio;
 int vcnt;

 atomic_set(&r10_bio->remaining, 1);


 for (i=0; i<conf->copies; i++)
  if (test_bit(BIO_UPTODATE, &r10_bio->devs[i].bio->bi_flags))
   break;

 if (i == conf->copies)
  goto done;

 first = i;
 fbio = r10_bio->devs[i].bio;

 vcnt = (r10_bio->sectors + (PAGE_SIZE >> 9) - 1) >> (PAGE_SHIFT - 9);

 for (i=0 ; i < conf->copies ; i++) {
  int j, d;

  tbio = r10_bio->devs[i].bio;

  if (tbio->bi_end_io != end_sync_read)
   continue;
  if (i == first)
   continue;
  if (test_bit(BIO_UPTODATE, &r10_bio->devs[i].bio->bi_flags)) {




   int sectors = r10_bio->sectors;
   for (j = 0; j < vcnt; j++) {
    int len = PAGE_SIZE;
    if (sectors < (len / 512))
     len = sectors * 512;
    if (memcmp(page_address(fbio->bi_io_vec[j].bv_page),
        page_address(tbio->bi_io_vec[j].bv_page),
        len))
     break;
    sectors -= len/512;
   }
   if (j == vcnt)
    continue;
   atomic64_add(r10_bio->sectors, &mddev->resync_mismatches);
   if (test_bit(MD_RECOVERY_CHECK, &mddev->recovery))

    continue;
  }





  tbio->bi_vcnt = vcnt;
  tbio->bi_size = r10_bio->sectors << 9;
  tbio->bi_idx = 0;
  tbio->bi_phys_segments = 0;
  tbio->bi_flags &= ~(BIO_POOL_MASK - 1);
  tbio->bi_flags |= 1 << BIO_UPTODATE;
  tbio->bi_next = ((void*)0);
  tbio->bi_rw = WRITE;
  tbio->bi_private = r10_bio;
  tbio->bi_sector = r10_bio->devs[i].addr;

  for (j=0; j < vcnt ; j++) {
   tbio->bi_io_vec[j].bv_offset = 0;
   tbio->bi_io_vec[j].bv_len = PAGE_SIZE;

   memcpy(page_address(tbio->bi_io_vec[j].bv_page),
          page_address(fbio->bi_io_vec[j].bv_page),
          PAGE_SIZE);
  }
  tbio->bi_end_io = end_sync_write;

  d = r10_bio->devs[i].devnum;
  atomic_inc(&conf->mirrors[d].rdev->nr_pending);
  atomic_inc(&r10_bio->remaining);
  md_sync_acct(conf->mirrors[d].rdev->bdev, bio_sectors(tbio));

  tbio->bi_sector += conf->mirrors[d].rdev->data_offset;
  tbio->bi_bdev = conf->mirrors[d].rdev->bdev;
  generic_make_request(tbio);
 }




 for (i = 0; i < conf->copies; i++) {
  int j, d;

  tbio = r10_bio->devs[i].repl_bio;
  if (!tbio || !tbio->bi_end_io)
   continue;
  if (r10_bio->devs[i].bio->bi_end_io != end_sync_write
      && r10_bio->devs[i].bio != fbio)
   for (j = 0; j < vcnt; j++)
    memcpy(page_address(tbio->bi_io_vec[j].bv_page),
           page_address(fbio->bi_io_vec[j].bv_page),
           PAGE_SIZE);
  d = r10_bio->devs[i].devnum;
  atomic_inc(&r10_bio->remaining);
  md_sync_acct(conf->mirrors[d].replacement->bdev,
        bio_sectors(tbio));
  generic_make_request(tbio);
 }

done:
 if (atomic_dec_and_test(&r10_bio->remaining)) {
  md_done_sync(mddev, r10_bio->sectors, 1);
  put_buf(r10_bio);
 }
}
