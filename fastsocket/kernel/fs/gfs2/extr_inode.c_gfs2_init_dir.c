
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct gfs2_inode {int dummy; } ;
struct gfs2_dirent {void* de_type; int de_inum; } ;
struct gfs2_dinode {int di_num; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
struct TYPE_4__ {int len; } ;


 int DT_DIR ;
 int GFS2_DIRENT_SIZE (int) ;
 void* cpu_to_be16 (int ) ;
 int gfs2_inum_out (struct gfs2_inode const*,struct gfs2_dirent*) ;
 TYPE_1__ gfs2_qdot ;
 TYPE_1__ gfs2_qdotdot ;
 int gfs2_qstr2dirent (TYPE_1__*,int,struct gfs2_dirent*) ;

__attribute__((used)) static void gfs2_init_dir(struct buffer_head *dibh,
     const struct gfs2_inode *parent)
{
 struct gfs2_dinode *di = (struct gfs2_dinode *)dibh->b_data;
 struct gfs2_dirent *dent = (struct gfs2_dirent *)(di+1);

 gfs2_qstr2dirent(&gfs2_qdot, GFS2_DIRENT_SIZE(gfs2_qdot.len), dent);
 dent->de_inum = di->di_num;
 dent->de_type = cpu_to_be16(DT_DIR);

 dent = (struct gfs2_dirent *)((char*)dent + GFS2_DIRENT_SIZE(1));
 gfs2_qstr2dirent(&gfs2_qdotdot, dibh->b_size - GFS2_DIRENT_SIZE(1) - sizeof(struct gfs2_dinode), dent);
 gfs2_inum_out(parent, dent);
 dent->de_type = cpu_to_be16(DT_DIR);
}
