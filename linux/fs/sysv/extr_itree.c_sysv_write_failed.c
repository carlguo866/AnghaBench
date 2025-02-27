
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ loff_t ;


 int sysv_truncate (struct inode*) ;
 int truncate_pagecache (struct inode*,scalar_t__) ;

__attribute__((used)) static void sysv_write_failed(struct address_space *mapping, loff_t to)
{
 struct inode *inode = mapping->host;

 if (to > inode->i_size) {
  truncate_pagecache(inode, inode->i_size);
  sysv_truncate(inode);
 }
}
