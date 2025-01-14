
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
typedef int u8 ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_inode {int data_len; int ui_lock; int ui_size; int synced_i_size; int del_cmtno; int ui_mutex; } ;
struct TYPE_3__ {int node_type; } ;
struct ubifs_ino_node {char* name; int nlen; int type; int inum; int key; TYPE_1__ ch; } ;
struct ubifs_info {TYPE_2__* jheads; int cmt_no; } ;
struct ubifs_dent_node {char* name; int nlen; int type; int inum; int key; TYPE_1__ ch; } ;
struct inode {scalar_t__ i_nlink; int i_ino; int i_mode; } ;
struct fscrypt_name {int minor_hash; int hash; } ;
struct TYPE_4__ {struct ubifs_wbuf wbuf; } ;


 int ALIGN (int,int) ;
 size_t BASEHD ;
 int ENOMEM ;
 int GFP_NOFS ;
 int IS_DIRSYNC (struct inode const*) ;
 int IS_SYNC (struct inode const*) ;
 int UBIFS_DENT_NODE ;
 int UBIFS_DENT_NODE_SZ ;
 int UBIFS_HASH_ARR_SZ ;
 int UBIFS_INO_NODE_SZ ;
 int UBIFS_XENT_NODE ;
 int cpu_to_le16 (size_t) ;
 int cpu_to_le64 (int ) ;
 int dent_key_init (struct ubifs_info*,union ubifs_key*,int ,struct fscrypt_name const*) ;
 int dent_key_init_hash (struct ubifs_info*,union ubifs_key*,int ,int ) ;
 int finish_reservation (struct ubifs_info*) ;
 size_t fname_len (struct fscrypt_name const*) ;
 int fname_name (struct fscrypt_name const*) ;
 int get_dent_type (int ) ;
 int ino_key_init (struct ubifs_info*,union ubifs_key*,int ) ;
 int key_write (struct ubifs_info*,union ubifs_key*,int ) ;
 int kfree (struct ubifs_ino_node*) ;
 struct ubifs_ino_node* kzalloc (int,int ) ;
 int make_reservation (struct ubifs_info*,size_t,int) ;
 int mark_inode_clean (struct ubifs_info*,struct ubifs_inode*) ;
 int memcpy (char*,int ,size_t) ;
 int mutex_is_locked (int *) ;
 int pack_inode (struct ubifs_info*,struct ubifs_ino_node*,struct inode const*,int) ;
 int release_head (struct ubifs_info*,size_t) ;
 int set_dent_cookie (struct ubifs_info*,struct ubifs_ino_node*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_add_auth_dirt (struct ubifs_info*,int) ;
 int ubifs_add_dirt (struct ubifs_info*,int,int) ;
 int ubifs_add_orphan (struct ubifs_info*,int ) ;
 int ubifs_assert (struct ubifs_info*,int ) ;
 scalar_t__ ubifs_auth_node_sz (struct ubifs_info*) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info*) ;
 int ubifs_delete_orphan (struct ubifs_info*,int ) ;
 struct ubifs_inode* ubifs_inode (struct inode const*) ;
 int ubifs_node_calc_hash (struct ubifs_info*,struct ubifs_ino_node*,int *) ;
 int ubifs_prep_grp_node (struct ubifs_info*,struct ubifs_ino_node*,int,int ) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_tnc_add (struct ubifs_info*,union ubifs_key*,int,int,int,int *) ;
 int ubifs_tnc_add_nm (struct ubifs_info*,union ubifs_key*,int,int,int,int *,struct fscrypt_name const*) ;
 int ubifs_tnc_remove_dh (struct ubifs_info*,union ubifs_key*,int ) ;
 int ubifs_tnc_remove_nm (struct ubifs_info*,union ubifs_key*,struct fscrypt_name const*) ;
 int ubifs_wbuf_add_ino_nolock (struct ubifs_wbuf*,int ) ;
 int write_head (struct ubifs_info*,size_t,struct ubifs_ino_node*,int,int*,int*,int) ;
 int xent_key_init (struct ubifs_info*,union ubifs_key*,int ,struct fscrypt_name const*) ;
 int zero_dent_node_unused (struct ubifs_ino_node*) ;

int ubifs_jnl_update(struct ubifs_info *c, const struct inode *dir,
       const struct fscrypt_name *nm, const struct inode *inode,
       int deletion, int xent)
{
 int err, dlen, ilen, len, lnum, ino_offs, dent_offs;
 int aligned_dlen, aligned_ilen, sync = IS_DIRSYNC(dir);
 int last_reference = !!(deletion && inode->i_nlink == 0);
 struct ubifs_inode *ui = ubifs_inode(inode);
 struct ubifs_inode *host_ui = ubifs_inode(dir);
 struct ubifs_dent_node *dent;
 struct ubifs_ino_node *ino;
 union ubifs_key dent_key, ino_key;
 u8 hash_dent[UBIFS_HASH_ARR_SZ];
 u8 hash_ino[UBIFS_HASH_ARR_SZ];
 u8 hash_ino_host[UBIFS_HASH_ARR_SZ];

 ubifs_assert(c, mutex_is_locked(&host_ui->ui_mutex));

 dlen = UBIFS_DENT_NODE_SZ + fname_len(nm) + 1;
 ilen = UBIFS_INO_NODE_SZ;







 if (!last_reference) {
  ilen += ui->data_len;
  sync |= IS_SYNC(inode);
 }

 aligned_dlen = ALIGN(dlen, 8);
 aligned_ilen = ALIGN(ilen, 8);

 len = aligned_dlen + aligned_ilen + UBIFS_INO_NODE_SZ;

 if (ubifs_authenticated(c))
  len += ALIGN(host_ui->data_len, 8) + ubifs_auth_node_sz(c);
 else
  len += host_ui->data_len;

 dent = kzalloc(len, GFP_NOFS);
 if (!dent)
  return -ENOMEM;


 err = make_reservation(c, BASEHD, len);
 if (err)
  goto out_free;

 if (!xent) {
  dent->ch.node_type = UBIFS_DENT_NODE;
  if (nm->hash)
   dent_key_init_hash(c, &dent_key, dir->i_ino, nm->hash);
  else
   dent_key_init(c, &dent_key, dir->i_ino, nm);
 } else {
  dent->ch.node_type = UBIFS_XENT_NODE;
  xent_key_init(c, &dent_key, dir->i_ino, nm);
 }

 key_write(c, &dent_key, dent->key);
 dent->inum = deletion ? 0 : cpu_to_le64(inode->i_ino);
 dent->type = get_dent_type(inode->i_mode);
 dent->nlen = cpu_to_le16(fname_len(nm));
 memcpy(dent->name, fname_name(nm), fname_len(nm));
 dent->name[fname_len(nm)] = '\0';
 set_dent_cookie(c, dent);

 zero_dent_node_unused(dent);
 ubifs_prep_grp_node(c, dent, dlen, 0);
 err = ubifs_node_calc_hash(c, dent, hash_dent);
 if (err)
  goto out_release;

 ino = (void *)dent + aligned_dlen;
 pack_inode(c, ino, inode, 0);
 err = ubifs_node_calc_hash(c, ino, hash_ino);
 if (err)
  goto out_release;

 ino = (void *)ino + aligned_ilen;
 pack_inode(c, ino, dir, 1);
 err = ubifs_node_calc_hash(c, ino, hash_ino_host);
 if (err)
  goto out_release;

 if (last_reference) {
  err = ubifs_add_orphan(c, inode->i_ino);
  if (err) {
   release_head(c, BASEHD);
   goto out_finish;
  }
  ui->del_cmtno = c->cmt_no;
 }

 err = write_head(c, BASEHD, dent, len, &lnum, &dent_offs, sync);
 if (err)
  goto out_release;
 if (!sync) {
  struct ubifs_wbuf *wbuf = &c->jheads[BASEHD].wbuf;

  ubifs_wbuf_add_ino_nolock(wbuf, inode->i_ino);
  ubifs_wbuf_add_ino_nolock(wbuf, dir->i_ino);
 }
 release_head(c, BASEHD);
 kfree(dent);
 ubifs_add_auth_dirt(c, lnum);

 if (deletion) {
  if (nm->hash)
   err = ubifs_tnc_remove_dh(c, &dent_key, nm->minor_hash);
  else
   err = ubifs_tnc_remove_nm(c, &dent_key, nm);
  if (err)
   goto out_ro;
  err = ubifs_add_dirt(c, lnum, dlen);
 } else
  err = ubifs_tnc_add_nm(c, &dent_key, lnum, dent_offs, dlen,
           hash_dent, nm);
 if (err)
  goto out_ro;







 ino_key_init(c, &ino_key, inode->i_ino);
 ino_offs = dent_offs + aligned_dlen;
 err = ubifs_tnc_add(c, &ino_key, lnum, ino_offs, ilen, hash_ino);
 if (err)
  goto out_ro;

 ino_key_init(c, &ino_key, dir->i_ino);
 ino_offs += aligned_ilen;
 err = ubifs_tnc_add(c, &ino_key, lnum, ino_offs,
       UBIFS_INO_NODE_SZ + host_ui->data_len, hash_ino_host);
 if (err)
  goto out_ro;

 finish_reservation(c);
 spin_lock(&ui->ui_lock);
 ui->synced_i_size = ui->ui_size;
 spin_unlock(&ui->ui_lock);
 if (xent) {
  spin_lock(&host_ui->ui_lock);
  host_ui->synced_i_size = host_ui->ui_size;
  spin_unlock(&host_ui->ui_lock);
 }
 mark_inode_clean(c, ui);
 mark_inode_clean(c, host_ui);
 return 0;

out_finish:
 finish_reservation(c);
out_free:
 kfree(dent);
 return err;

out_release:
 release_head(c, BASEHD);
 kfree(dent);
out_ro:
 ubifs_ro_mode(c, err);
 if (last_reference)
  ubifs_delete_orphan(c, inode->i_ino);
 finish_reservation(c);
 return err;
}
