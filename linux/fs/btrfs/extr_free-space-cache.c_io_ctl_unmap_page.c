
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_io_ctl {int * orig; int * cur; } ;



__attribute__((used)) static void io_ctl_unmap_page(struct btrfs_io_ctl *io_ctl)
{
 if (io_ctl->cur) {
  io_ctl->cur = ((void*)0);
  io_ctl->orig = ((void*)0);
 }
}
