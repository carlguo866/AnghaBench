
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ umode_t ;
struct seq_file {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ i_mode; } ;


 scalar_t__ S_IALLUGO ;
 scalar_t__ S_IRWXUGO ;
 scalar_t__ S_ISVTX ;
 TYPE_1__* d_inode (struct dentry*) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;

__attribute__((used)) static int bpf_show_options(struct seq_file *m, struct dentry *root)
{
 umode_t mode = d_inode(root)->i_mode & S_IALLUGO & ~S_ISVTX;

 if (mode != S_IRWXUGO)
  seq_printf(m, ",mode=%o", mode);
 return 0;
}
