
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_inode {int nsize; void* mctime; void* name_crc; void* node_crc; int type; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; void* data_crc; } ;
struct jffs2_raw_dirent {int nsize; void* mctime; void* name_crc; void* node_crc; int type; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; void* data_crc; } ;
struct jffs2_inode_info {int highest_version; int sem; int dents; struct jffs2_full_dnode* metadata; TYPE_1__* inocache; } ;
struct jffs2_full_dnode {int i_nlink; int i_ino; int i_ctime; int i_mtime; int * i_fop; int * i_op; int i_sb; } ;
struct jffs2_full_dirent {int i_nlink; int i_ino; int i_ctime; int i_mtime; int * i_fop; int * i_op; int i_sb; } ;
struct inode {int i_nlink; int i_ino; int i_ctime; int i_mtime; int * i_fop; int * i_op; int i_sb; } ;
struct TYPE_4__ {int len; struct jffs2_raw_inode* name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {int pino_nlink; } ;


 int ALLOC_NORMAL ;
 int DT_DIR ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct jffs2_full_dnode*) ;
 int ITIME (int ) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct jffs2_full_dnode*) ;
 int JFFS2_MAGIC_BITMASK ;
 int JFFS2_NODETYPE_DIRENT ;
 struct jffs2_sb_info* JFFS2_SB_INFO (int ) ;
 int JFFS2_SUMMARY_DIRENT_SIZE (int) ;
 int JFFS2_SUMMARY_INODE_SIZE ;
 int PTR_ERR (struct jffs2_full_dnode*) ;
 int S_IFDIR ;
 void* cpu_to_je16 (int ) ;
 void* cpu_to_je32 (int) ;
 int crc32 (int ,struct jffs2_raw_inode*,int) ;
 int d_instantiate (struct dentry*,struct jffs2_full_dnode*) ;
 int get_seconds () ;
 int inc_nlink (struct jffs2_full_dnode*) ;
 int je32_to_cpu (void*) ;
 int jffs2_add_fd_to_list (struct jffs2_sb_info*,struct jffs2_full_dnode*,int *) ;
 struct jffs2_raw_inode* jffs2_alloc_raw_dirent () ;
 struct jffs2_raw_inode* jffs2_alloc_raw_inode () ;
 int jffs2_clear_inode (struct jffs2_full_dnode*) ;
 int jffs2_complete_reservation (struct jffs2_sb_info*) ;
 int jffs2_dir_inode_operations ;
 int jffs2_dir_operations ;
 int jffs2_free_raw_dirent (struct jffs2_raw_inode*) ;
 int jffs2_free_raw_inode (struct jffs2_raw_inode*) ;
 int jffs2_init_acl_post (struct jffs2_full_dnode*) ;
 int jffs2_init_security (struct jffs2_full_dnode*,struct jffs2_full_dnode*) ;
 struct jffs2_full_dnode* jffs2_new_inode (struct jffs2_full_dnode*,int,struct jffs2_raw_inode*) ;
 int jffs2_reserve_space (struct jffs2_sb_info*,int,int *,int ,int ) ;
 struct jffs2_full_dnode* jffs2_write_dirent (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_inode*,struct jffs2_raw_inode*,int,int ) ;
 struct jffs2_full_dnode* jffs2_write_dnode (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_inode*,int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int jffs2_mkdir (struct inode *dir_i, struct dentry *dentry, int mode)
{
 struct jffs2_inode_info *f, *dir_f;
 struct jffs2_sb_info *c;
 struct inode *inode;
 struct jffs2_raw_inode *ri;
 struct jffs2_raw_dirent *rd;
 struct jffs2_full_dnode *fn;
 struct jffs2_full_dirent *fd;
 int namelen;
 uint32_t alloclen;
 int ret;

 mode |= S_IFDIR;

 ri = jffs2_alloc_raw_inode();
 if (!ri)
  return -ENOMEM;

 c = JFFS2_SB_INFO(dir_i->i_sb);




 namelen = dentry->d_name.len;
 ret = jffs2_reserve_space(c, sizeof(*ri), &alloclen, ALLOC_NORMAL,
      JFFS2_SUMMARY_INODE_SIZE);

 if (ret) {
  jffs2_free_raw_inode(ri);
  return ret;
 }

 inode = jffs2_new_inode(dir_i, mode, ri);

 if (IS_ERR(inode)) {
  jffs2_free_raw_inode(ri);
  jffs2_complete_reservation(c);
  return PTR_ERR(inode);
 }

 inode->i_op = &jffs2_dir_inode_operations;
 inode->i_fop = &jffs2_dir_operations;

 f = JFFS2_INODE_INFO(inode);


 inode->i_nlink = 2;

 f->inocache->pino_nlink = dir_i->i_ino;

 ri->data_crc = cpu_to_je32(0);
 ri->node_crc = cpu_to_je32(crc32(0, ri, sizeof(*ri)-8));

 fn = jffs2_write_dnode(c, f, ri, ((void*)0), 0, ALLOC_NORMAL);

 jffs2_free_raw_inode(ri);

 if (IS_ERR(fn)) {

  mutex_unlock(&f->sem);
  jffs2_complete_reservation(c);
  jffs2_clear_inode(inode);
  return PTR_ERR(fn);
 }



 f->metadata = fn;
 mutex_unlock(&f->sem);

 jffs2_complete_reservation(c);

 ret = jffs2_init_security(inode, dir_i);
 if (ret) {
  jffs2_clear_inode(inode);
  return ret;
 }
 ret = jffs2_init_acl_post(inode);
 if (ret) {
  jffs2_clear_inode(inode);
  return ret;
 }

 ret = jffs2_reserve_space(c, sizeof(*rd)+namelen, &alloclen,
      ALLOC_NORMAL, JFFS2_SUMMARY_DIRENT_SIZE(namelen));
 if (ret) {

  jffs2_clear_inode(inode);
  return ret;
 }

 rd = jffs2_alloc_raw_dirent();
 if (!rd) {

  jffs2_complete_reservation(c);
  jffs2_clear_inode(inode);
  return -ENOMEM;
 }

 dir_f = JFFS2_INODE_INFO(dir_i);
 mutex_lock(&dir_f->sem);

 rd->magic = cpu_to_je16(JFFS2_MAGIC_BITMASK);
 rd->nodetype = cpu_to_je16(JFFS2_NODETYPE_DIRENT);
 rd->totlen = cpu_to_je32(sizeof(*rd) + namelen);
 rd->hdr_crc = cpu_to_je32(crc32(0, rd, sizeof(struct jffs2_unknown_node)-4));

 rd->pino = cpu_to_je32(dir_i->i_ino);
 rd->version = cpu_to_je32(++dir_f->highest_version);
 rd->ino = cpu_to_je32(inode->i_ino);
 rd->mctime = cpu_to_je32(get_seconds());
 rd->nsize = namelen;
 rd->type = DT_DIR;
 rd->node_crc = cpu_to_je32(crc32(0, rd, sizeof(*rd)-8));
 rd->name_crc = cpu_to_je32(crc32(0, dentry->d_name.name, namelen));

 fd = jffs2_write_dirent(c, dir_f, rd, dentry->d_name.name, namelen, ALLOC_NORMAL);

 if (IS_ERR(fd)) {


  jffs2_complete_reservation(c);
  jffs2_free_raw_dirent(rd);
  mutex_unlock(&dir_f->sem);
  jffs2_clear_inode(inode);
  return PTR_ERR(fd);
 }

 dir_i->i_mtime = dir_i->i_ctime = ITIME(je32_to_cpu(rd->mctime));
 inc_nlink(dir_i);

 jffs2_free_raw_dirent(rd);



 jffs2_add_fd_to_list(c, fd, &dir_f->dents);

 mutex_unlock(&dir_f->sem);
 jffs2_complete_reservation(c);

 d_instantiate(dentry, inode);
 return 0;
}
