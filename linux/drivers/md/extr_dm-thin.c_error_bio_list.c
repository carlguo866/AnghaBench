
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_list {int dummy; } ;
struct bio {int bi_status; } ;
typedef int blk_status_t ;


 int bio_endio (struct bio*) ;
 struct bio* bio_list_pop (struct bio_list*) ;

__attribute__((used)) static void error_bio_list(struct bio_list *bios, blk_status_t error)
{
 struct bio *bio;

 while ((bio = bio_list_pop(bios))) {
  bio->bi_status = error;
  bio_endio(bio);
 }
}
