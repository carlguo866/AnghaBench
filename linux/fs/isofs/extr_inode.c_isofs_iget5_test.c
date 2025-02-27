
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isofs_iget5_callback_data {scalar_t__ block; scalar_t__ offset; } ;
struct iso_inode_info {scalar_t__ i_iget5_block; scalar_t__ i_iget5_offset; } ;
struct inode {int dummy; } ;


 struct iso_inode_info* ISOFS_I (struct inode*) ;

__attribute__((used)) static int isofs_iget5_test(struct inode *ino, void *data)
{
 struct iso_inode_info *i = ISOFS_I(ino);
 struct isofs_iget5_callback_data *d =
  (struct isofs_iget5_callback_data*)data;
 return (i->i_iget5_block == d->block)
  && (i->i_iget5_offset == d->offset);
}
