
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int leb_size; unsigned long long cmt_no; int ubi; } ;
struct TYPE_2__ {scalar_t__ node_type; int sqnum; } ;
struct ubifs_cs_node {TYPE_1__ ch; int cmt_no; } ;


 int EBADMSG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SCANNED_A_NODE ;
 scalar_t__ UBIFS_CS_NODE ;
 int UBIFS_CS_NODE_SZ ;
 int dbg_err (char*,...) ;
 int dbg_rcvry (char*,unsigned long long,...) ;
 int kfree (struct ubifs_cs_node*) ;
 struct ubifs_cs_node* kmalloc (int,int ) ;
 unsigned long long le64_to_cpu (int ) ;
 int ubi_read (int ,int,void*,int,int) ;
 int ubifs_err (char*) ;
 int ubifs_scan_a_node (struct ubifs_info*,struct ubifs_cs_node*,int,int,int,int ) ;

__attribute__((used)) static int get_cs_sqnum(struct ubifs_info *c, int lnum, int offs,
   unsigned long long *cs_sqnum)
{
 struct ubifs_cs_node *cs_node = ((void*)0);
 int err, ret;

 dbg_rcvry("at %d:%d", lnum, offs);
 cs_node = kmalloc(UBIFS_CS_NODE_SZ, GFP_KERNEL);
 if (!cs_node)
  return -ENOMEM;
 if (c->leb_size - offs < UBIFS_CS_NODE_SZ)
  goto out_err;
 err = ubi_read(c->ubi, lnum, (void *)cs_node, offs, UBIFS_CS_NODE_SZ);
 if (err && err != -EBADMSG)
  goto out_free;
 ret = ubifs_scan_a_node(c, cs_node, UBIFS_CS_NODE_SZ, lnum, offs, 0);
 if (ret != SCANNED_A_NODE) {
  dbg_err("Not a valid node");
  goto out_err;
 }
 if (cs_node->ch.node_type != UBIFS_CS_NODE) {
  dbg_err("Node a CS node, type is %d", cs_node->ch.node_type);
  goto out_err;
 }
 if (le64_to_cpu(cs_node->cmt_no) != c->cmt_no) {
  dbg_err("CS node cmt_no %llu != current cmt_no %llu",
   (unsigned long long)le64_to_cpu(cs_node->cmt_no),
   c->cmt_no);
  goto out_err;
 }
 *cs_sqnum = le64_to_cpu(cs_node->ch.sqnum);
 dbg_rcvry("commit start sqnum %llu", *cs_sqnum);
 kfree(cs_node);
 return 0;

out_err:
 err = -EINVAL;
out_free:
 ubifs_err("failed to get CS sqnum");
 kfree(cs_node);
 return err;
}
