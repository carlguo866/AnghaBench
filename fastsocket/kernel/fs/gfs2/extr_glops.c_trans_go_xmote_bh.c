
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {scalar_t__ sd_log_sequence; int sd_flags; TYPE_2__* sd_jdesc; } ;
struct gfs2_log_header_host {int lh_flags; int lh_blkno; scalar_t__ lh_sequence; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_glock {TYPE_1__* gl_ops; struct gfs2_sbd* gl_sbd; } ;
struct TYPE_4__ {int jd_inode; } ;
struct TYPE_3__ {int (* go_inval ) (struct gfs2_glock*,int ) ;} ;


 int DIO_METADATA ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_LOG_HEAD_UNMOUNT ;
 int SDF_JOURNAL_LIVE ;
 int SDF_SHUTDOWN ;
 int gfs2_consist (struct gfs2_sbd*) ;
 int gfs2_find_jhead (TYPE_2__*,struct gfs2_log_header_host*) ;
 int gfs2_log_pointers_init (struct gfs2_sbd*,int ) ;
 int stub1 (struct gfs2_glock*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int trans_go_xmote_bh(struct gfs2_glock *gl, struct gfs2_holder *gh)
{
 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct gfs2_inode *ip = GFS2_I(sdp->sd_jdesc->jd_inode);
 struct gfs2_glock *j_gl = ip->i_gl;
 struct gfs2_log_header_host head;
 int error;

 if (test_bit(SDF_JOURNAL_LIVE, &sdp->sd_flags)) {
  j_gl->gl_ops->go_inval(j_gl, DIO_METADATA);

  error = gfs2_find_jhead(sdp->sd_jdesc, &head);
  if (error)
   gfs2_consist(sdp);
  if (!(head.lh_flags & GFS2_LOG_HEAD_UNMOUNT))
   gfs2_consist(sdp);


  if (!test_bit(SDF_SHUTDOWN, &sdp->sd_flags)) {
   sdp->sd_log_sequence = head.lh_sequence + 1;
   gfs2_log_pointers_init(sdp, head.lh_blkno);
  }
 }
 return 0;
}
