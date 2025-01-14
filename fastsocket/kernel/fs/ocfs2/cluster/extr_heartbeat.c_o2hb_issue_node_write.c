
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_region {int dummy; } ;
struct o2hb_bio_wait_ctxt {int wc_num_reqs; } ;
struct bio {int dummy; } ;


 scalar_t__ IS_ERR (struct bio*) ;
 int PTR_ERR (struct bio*) ;
 int WRITE ;
 int atomic_inc (int *) ;
 int mlog_errno (int) ;
 int o2hb_bio_wait_init (struct o2hb_bio_wait_ctxt*) ;
 struct bio* o2hb_setup_one_bio (struct o2hb_region*,struct o2hb_bio_wait_ctxt*,unsigned int*,unsigned int) ;
 unsigned int o2nm_this_node () ;
 int submit_bio (int ,struct bio*) ;

__attribute__((used)) static int o2hb_issue_node_write(struct o2hb_region *reg,
     struct o2hb_bio_wait_ctxt *write_wc)
{
 int status;
 unsigned int slot;
 struct bio *bio;

 o2hb_bio_wait_init(write_wc);

 slot = o2nm_this_node();

 bio = o2hb_setup_one_bio(reg, write_wc, &slot, slot+1);
 if (IS_ERR(bio)) {
  status = PTR_ERR(bio);
  mlog_errno(status);
  goto bail;
 }

 atomic_inc(&write_wc->wc_num_reqs);
 submit_bio(WRITE, bio);

 status = 0;
bail:
 return status;
}
