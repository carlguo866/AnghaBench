
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_6__ {int bw_gran; } ;
struct rdt_resource {TYPE_3__ membw; } ;
struct kernfs_open_file {TYPE_2__* kn; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {struct rdt_resource* priv; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int rdt_bw_gran_show(struct kernfs_open_file *of,
        struct seq_file *seq, void *v)
{
 struct rdt_resource *r = of->kn->parent->priv;

 seq_printf(seq, "%u\n", r->membw.bw_gran);
 return 0;
}
