
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_context {int flags; } ;
struct seq_file {struct spu_context* private; } ;


 int SPU_CREATE_ISOLATE ;
 int SPU_CREATE_NOSCHED ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int spufs_caps_show(struct seq_file *s, void *private)
{
 struct spu_context *ctx = s->private;

 if (!(ctx->flags & SPU_CREATE_NOSCHED))
  seq_puts(s, "sched\n");
 if (!(ctx->flags & SPU_CREATE_ISOLATE))
  seq_puts(s, "step\n");
 return 0;
}
