
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_statfs_change_host {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int rd_gl; } ;
struct gfs2_holder {int gh_gl; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int GL_ASYNC ;
 int LM_ST_SHARED ;
 int current ;
 struct gfs2_rgrpd* gfs2_glock2rgrp (int ) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 scalar_t__ gfs2_glock_poll (struct gfs2_holder*) ;
 int gfs2_glock_wait (struct gfs2_holder*) ;
 scalar_t__ gfs2_holder_initialized (struct gfs2_holder*) ;
 int gfs2_holder_mark_uninitialized (struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 struct gfs2_rgrpd* gfs2_rgrpd_get_first (struct gfs2_sbd*) ;
 struct gfs2_rgrpd* gfs2_rgrpd_get_next (struct gfs2_rgrpd*) ;
 int kfree (struct gfs2_holder*) ;
 struct gfs2_holder* kmalloc_array (unsigned int,int,int ) ;
 int memset (struct gfs2_statfs_change_host*,int ,int) ;
 scalar_t__ signal_pending (int ) ;
 int statfs_slow_fill (struct gfs2_rgrpd*,struct gfs2_statfs_change_host*) ;
 int yield () ;

__attribute__((used)) static int gfs2_statfs_slow(struct gfs2_sbd *sdp, struct gfs2_statfs_change_host *sc)
{
 struct gfs2_rgrpd *rgd_next;
 struct gfs2_holder *gha, *gh;
 unsigned int slots = 64;
 unsigned int x;
 int done;
 int error = 0, err;

 memset(sc, 0, sizeof(struct gfs2_statfs_change_host));
 gha = kmalloc_array(slots, sizeof(struct gfs2_holder), GFP_KERNEL);
 if (!gha)
  return -ENOMEM;
 for (x = 0; x < slots; x++)
  gfs2_holder_mark_uninitialized(gha + x);

 rgd_next = gfs2_rgrpd_get_first(sdp);

 for (;;) {
  done = 1;

  for (x = 0; x < slots; x++) {
   gh = gha + x;

   if (gfs2_holder_initialized(gh) && gfs2_glock_poll(gh)) {
    err = gfs2_glock_wait(gh);
    if (err) {
     gfs2_holder_uninit(gh);
     error = err;
    } else {
     if (!error) {
      struct gfs2_rgrpd *rgd =
       gfs2_glock2rgrp(gh->gh_gl);

      error = statfs_slow_fill(rgd, sc);
     }
     gfs2_glock_dq_uninit(gh);
    }
   }

   if (gfs2_holder_initialized(gh))
    done = 0;
   else if (rgd_next && !error) {
    error = gfs2_glock_nq_init(rgd_next->rd_gl,
          LM_ST_SHARED,
          GL_ASYNC,
          gh);
    rgd_next = gfs2_rgrpd_get_next(rgd_next);
    done = 0;
   }

   if (signal_pending(current))
    error = -ERESTARTSYS;
  }

  if (done)
   break;

  yield();
 }

 kfree(gha);
 return error;
}
