
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_request {struct bio* private_bio; } ;
struct bio {int * bi_next; int bi_end_io; struct drbd_request* bi_private; } ;


 int GFP_NOIO ;
 struct bio* bio_clone_fast (struct bio*,int ,int *) ;
 int drbd_io_bio_set ;
 int drbd_request_endio ;

__attribute__((used)) static inline void drbd_req_make_private_bio(struct drbd_request *req, struct bio *bio_src)
{
 struct bio *bio;
 bio = bio_clone_fast(bio_src, GFP_NOIO, &drbd_io_bio_set);

 req->private_bio = bio;

 bio->bi_private = req;
 bio->bi_end_io = drbd_request_endio;
 bio->bi_next = ((void*)0);
}
