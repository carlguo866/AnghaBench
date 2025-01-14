
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {int dummy; } ;
struct dentry {int dummy; } ;


 int MVPP2_PRS_TCAM_SRAM_SIZE ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int mvpp2_dbgfs_prs_entry_init (struct dentry*,struct mvpp2*,int) ;

__attribute__((used)) static int mvpp2_dbgfs_prs_init(struct dentry *parent, struct mvpp2 *priv)
{
 struct dentry *prs_dir;
 int i, ret;

 prs_dir = debugfs_create_dir("parser", parent);

 for (i = 0; i < MVPP2_PRS_TCAM_SRAM_SIZE; i++) {
  ret = mvpp2_dbgfs_prs_entry_init(prs_dir, priv, i);
  if (ret)
   return ret;
 }

 return 0;
}
