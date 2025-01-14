
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_diskflags; scalar_t__ i_entries; scalar_t__ i_no_addr; } ;
struct gfs2_dirent {int dummy; } ;
struct file_ra_state {int dummy; } ;
struct dirent_gather {scalar_t__ offset; struct gfs2_dirent const** pdent; } ;
struct buffer_head {int b_size; int b_data; } ;
typedef int filldir_t ;


 int EIO ;
 int ENOMEM ;
 int GFP_NOFS ;
 int GFS2_DIF_EXHASH ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct gfs2_dirent const*) ;
 int PTR_ERR (struct gfs2_dirent const*) ;
 int brelse (struct buffer_head*) ;
 int dir_e_read (struct inode*,int *,void*,int ,struct file_ra_state*) ;
 int do_filldir_main (struct gfs2_inode*,int *,void*,int ,struct gfs2_dirent const**,scalar_t__,int*) ;
 int fs_warn (struct gfs2_sbd*,char*,unsigned long long,scalar_t__,scalar_t__) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_dirent_gather ;
 struct gfs2_dirent* gfs2_dirent_scan (struct inode*,int ,int ,int ,int *,struct dirent_gather*) ;
 int gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int kfree (struct gfs2_dirent const**) ;
 struct gfs2_dirent** kmalloc (int,int ) ;

int gfs2_dir_read(struct inode *inode, u64 *offset, void *opaque,
    filldir_t filldir, struct file_ra_state *f_ra)
{
 struct gfs2_inode *dip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);
 struct dirent_gather g;
 const struct gfs2_dirent **darr, *dent;
 struct buffer_head *dibh;
 int copied = 0;
 int error;

 if (!dip->i_entries)
  return 0;

 if (dip->i_diskflags & GFS2_DIF_EXHASH)
  return dir_e_read(inode, offset, opaque, filldir, f_ra);

 if (!gfs2_is_stuffed(dip)) {
  gfs2_consist_inode(dip);
  return -EIO;
 }

 error = gfs2_meta_inode_buffer(dip, &dibh);
 if (error)
  return error;

 error = -ENOMEM;

 darr = kmalloc(96 * sizeof(struct gfs2_dirent *), GFP_NOFS);
 if (darr) {
  g.pdent = darr;
  g.offset = 0;
  dent = gfs2_dirent_scan(inode, dibh->b_data, dibh->b_size,
     gfs2_dirent_gather, ((void*)0), &g);
  if (IS_ERR(dent)) {
   error = PTR_ERR(dent);
   goto out;
  }
  if (dip->i_entries != g.offset) {
   fs_warn(sdp, "Number of entries corrupt in dir %llu, "
    "ip->i_entries (%u) != g.offset (%u)\n",
    (unsigned long long)dip->i_no_addr,
    dip->i_entries,
    g.offset);
   error = -EIO;
   goto out;
  }
  error = do_filldir_main(dip, offset, opaque, filldir, darr,
     dip->i_entries, &copied);
out:
  kfree(darr);
 }

 if (error > 0)
  error = 0;

 brelse(dibh);

 return error;
}
