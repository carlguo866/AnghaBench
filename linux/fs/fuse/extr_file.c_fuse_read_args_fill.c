
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t size; int flags; int offset; int fh; } ;
struct TYPE_9__ {TYPE_3__ in; } ;
struct fuse_args {int opcode; int in_numargs; int out_argvar; int out_numargs; TYPE_5__* out_args; TYPE_2__* in_args; int nodeid; } ;
struct TYPE_6__ {struct fuse_args args; } ;
struct fuse_io_args {TYPE_4__ read; TYPE_1__ ap; } ;
struct fuse_file {int nodeid; int fh; } ;
struct file {int f_flags; struct fuse_file* private_data; } ;
typedef int loff_t ;
struct TYPE_10__ {size_t size; } ;
struct TYPE_7__ {int size; TYPE_3__* value; } ;



void fuse_read_args_fill(struct fuse_io_args *ia, struct file *file, loff_t pos,
    size_t count, int opcode)
{
 struct fuse_file *ff = file->private_data;
 struct fuse_args *args = &ia->ap.args;

 ia->read.in.fh = ff->fh;
 ia->read.in.offset = pos;
 ia->read.in.size = count;
 ia->read.in.flags = file->f_flags;
 args->opcode = opcode;
 args->nodeid = ff->nodeid;
 args->in_numargs = 1;
 args->in_args[0].size = sizeof(ia->read.in);
 args->in_args[0].value = &ia->read.in;
 args->out_argvar = 1;
 args->out_numargs = 1;
 args->out_args[0].size = count;
}
