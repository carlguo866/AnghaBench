
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_write_ctxt {int w_target_page; } ;
struct TYPE_3__ {int id_data; int id_count; } ;
struct TYPE_4__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {int i_dyn_features; TYPE_2__ id2; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int KM_USER0 ;
 int PageUptodate (int ) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int,void*,unsigned int) ;
 int mlog (int ,char*,unsigned long long,unsigned int,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ocfs2_write_end_inline(struct inode *inode, loff_t pos,
       unsigned len, unsigned *copied,
       struct ocfs2_dinode *di,
       struct ocfs2_write_ctxt *wc)
{
 void *kaddr;

 if (unlikely(*copied < len)) {
  if (!PageUptodate(wc->w_target_page)) {
   *copied = 0;
   return;
  }
 }

 kaddr = kmap_atomic(wc->w_target_page, KM_USER0);
 memcpy(di->id2.i_data.id_data + pos, kaddr + pos, *copied);
 kunmap_atomic(kaddr, KM_USER0);

 mlog(0, "Data written to inode at offset %llu. "
      "id_count = %u, copied = %u, i_dyn_features = 0x%x\n",
      (unsigned long long)pos, *copied,
      le16_to_cpu(di->id2.i_data.id_count),
      le16_to_cpu(di->i_dyn_features));
}
